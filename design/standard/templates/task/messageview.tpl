<form enctype="multipart/form-data" method="post" action={concat("task/messageview/",$message.id)|ezurl}>

<div class="maincontentheader">
<h1>Task message '{$message.contentobject.name}'</h1>
</div>

<div class="block">
<div class="element">
<label>From:</label><div class="labelbreak"></div>
{content_view_gui view=text_linked content_object=$message.task.creator.contentobject}
</div>
<div class="element">
<label>To:</label><div class="labelbreak"></div>
{content_view_gui view=text_linked content_object=$message.task.receiver.contentobject}
</div>
<div class="break"></div>
</div>

{section name=ContentObjectAttribute loop=$message.contentobject.contentobject_attributes sequence=array(bglight,bgdark)}
<input type="hidden" name="ContentObjectAttribute_id[]" value="{$ContentObjectAttribute:item.id}" />
<div class="block">
<label>{$ContentObjectAttribute:item.contentclass_attribute.name}</label><div class="labelbreak"></div>
{attribute_view_gui attribute=$ContentObjectAttribute:item}
</div>
{/section}

<div class="buttonblock">
<input type="submit" name="EditButton" value="{'Edit'|i18n('task/message')}" />
<input type="submit" name="PublishButton" value="{'Send'|i18n('task/message')}" />
<input type="submit" name="CancelButton" value="{'Discard'|i18n('task/message')}" />
</div>

</form>
