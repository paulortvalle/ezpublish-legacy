{* Lists search results with edit controls *}
{section name=Child show=$search_result}

    {let name=Child can_remove=false() 
            can_edit=false() 
            can_create=false() 
            can_copy=false()}

    {section loop=$search_result}
        {section show=$:item.object.can_remove}
            {set can_remove=true()}
        {/section}
        {section show=$:item.object.can_edit}
            {set can_edit=true()}
        {/section}
        {section show=$:item.object.can_create}
            {set can_copy=true()}
        {/section}
    {/section}

    <table class="list" width="100%" cellspacing="0" cellpadding="0" border="0">
    <tr>
        {section show=$:can_remove}
            <th width="1">
                &nbsp;
            </th>
        {/section}
        <th>
            {"Name"|i18n("design/standard/node/view")}
        </th>
        <th>
            {"Class"|i18n("design/standard/node/view")}
        </th>
        {section show=$:can_edit}
            <th width="1">
                {"Edit"|i18n("design/standard/node/view")}
            </th>
        {/section}
        {section show=$:can_copy}
            <th width="1">
                {"Copy"|i18n("design/standard/node/view")}
            </th>
        {/section}
    </tr>
    {section name=SearchResult loop=$search_result show=$search_result sequence=array(bglight,bgdark)}
        <tr class="{$:sequence}">
            {section show=$:item.object.can_remove}
                <td align="right" width="1">
                    {section show=$:item.object.can_remove}
                        <input type="checkbox" name="DeleteIDArray[]" value="{$:item.node_id}" />
                    {/section}
                </td>
            {/section}
            <td>
                <a href={concat('content/view/full/',$:item.node_id)|ezurl}>
		<a href={concat('content/view/full/',$:item.node_id)|ezurl}>
		{switch match=$:item.object.contentclass_id}
		{case match=4}
		    <img src={"user.gif"|ezimage} border="0" alt="{'User'|i18n('design/standard/node/view')}" />
		{/case}
		{case match=3}
		    <img src={"usergroup.gif"|ezimage} border="0" alt="{'User group'|i18n('design/standard/node/view')}" />
		{/case}
		{case}
		    <img src={"class_2.png"|ezimage} border="0" alt="{'Document'|i18n('design/standard/node/view')}" />
		{/case}
		{/switch}
		&nbsp;
		{$:item.name|wash}</a></a>
            </td>
            <td>
                {$:item.object.class_name|wash}
            </td>

            {section show=$:item.object.can_edit}
                <td width="1">
                    {section show=$:item.object.can_edit}
                        <a href={concat( "content/edit/", $:item.contentobject_id )|ezurl}><img src={"edit.png"|ezimage} alt="{'Edit'|i18n('design/standard/node/view')}" /></a>
                    {/section}
                </td>
            {/section}
            {section show=$:item.object.can_create}
                <td>
                    <a href={concat( "content/copy/", $:item.contentobject_id )|ezurl}><img src={"copy.gif"|ezimage} alt="{'Copy'|i18n( 'design/standard/node/view' )}" /></a>
                </td>
            {/section}
        </tr>
    {/section}
    </table>
    {section show=$:can_remove}
        <input type="submit" name="RemoveButton" value="{'Remove'|i18n('design/standard/node/view')}" />
    {/section}
    {/let}
{/section}
