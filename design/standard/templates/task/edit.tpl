<form action={concat("task/edit/",$task.id)|ezurl} method="post" name="TaskEdit">

<div class="maincontentheader">
<h1>Creating new task</h1>
</div>

<h2>
{section show=$task.task_type|eq(1)}
{"Task"|i18n('task')}
{section-else}
{"Assignment"|i18n('task')}
{/section}
</h2>

<div class="block">
<label>Date:</label><div class="labelbreak"></div>
{$task.created|l10n('shortdatetime')} ({$task.modified|l10n('shortdatetime')})
</div>

<div class="block">
<label>From:</label><div class="labelbreak"></div>
{content_view_gui view=text_linked content_object=$task.creator.contentobject}
</div>

<div class="block">
<label>To:</label><div class="labelbreak"></div>
{section show=$task.receiver_id|gt(0)}
{content_view_gui view=text_linked content_object=$task.receiver.contentobject}
{section-else}
<p class="box">{"Please select receiver"|i18n('task')}</p>
{/section}
</div>


{section show=$task.parent_task_id|gt(0)}

<div class="block">
<div class="element">
<label>Parent type:</label><div class="labelbreak"></div>
{$task.parent_task_type|choose('None','Task','Workflow')}
</div>
<div class="element">
<label>Parent ID:</label><div class="labelbreak"></div>
<p class="box"><a href={concat("task/list/",,$task.parent_task_id)|ezurl}>{$task.parent_task_id}</a></p>
</div>
<div class="break"></div>
</div>

{/section}

{section show=$task.task_type|eq(2)}
<h2>{"Assignment"|i18n('task')}</h2>

<div class="block">
<div class="element">
<label>Access Type:</label><div class="labelbreak"></div>
<select name="Task_access_type">
<option value="1"{$task.access_type|eq(1)|choose('','selected="selected"')}>{"Read"|i18n('task')}</option>
<option value="2"{$task.access_type|eq(2)|choose('','selected="selected"')}>{"Read/Write"|i18n('task')}</option>
</select>
</div>
<div class="element">
<label>Object Type:</label><div class="labelbreak"></div>
<select name="Task_object_type">
<option value="1"{$task.object_type|eq(1)|choose('','selected="selected"')}>{"Content Object"|i18n('task')}</option>
<option value="2"{$task.object_type|eq(2)|choose('','selected="selected"')}>{"Content Class"|i18n('task')}</option>
<option value="3"{$task.object_type|eq(3)|choose('','selected="selected"')}>{"Work Flow"|i18n('task')}</option>
<option value="4"{$task.object_type|eq(4)|choose('','selected="selected"')}>{"Role"|i18n('task')}</option>
</select>
</div>
{section show=$task.object_id|gt(0)}
<div class="element">
<label>Assignment for object:</label><div class="labelbreak"></div>
<p class="box">{$task.object_id}</p>
</div>
{/section}
<div class="break"></div>
</div>

<div class="buttonblock">
{include uri="design:gui/button.tpl" name=SelectObject id_name=SelectObjectButton value="Choose Object"|i18n('task')}
</div>

{/section}

<div class="buttonblock">
{section show=$task.task_type|eq(1)}
<input class="button" type="submit" Name="SetAssignmentButton" value="Convert To Assignment" />
{section-else}
<input class="button" type="submit" Name="SetTaskButton" value="Convert To Task" />
{/section}
{include uri="design:gui/button.tpl" name=SelectReceiver id_name=SelectReceiverButton value="Change Receiver"|i18n('task')}
{include uri="design:gui/button.tpl" name=SendTask id_name=SendTaskButton value="Activate"|i18n('task')}
{include uri="design:gui/button.tpl" name=DiscardTask id_name=DiscardTaskButton value="Discard"|i18n('task')}
</div>

</form>
