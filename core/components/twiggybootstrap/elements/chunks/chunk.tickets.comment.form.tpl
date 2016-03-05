<h4 id='comment-new-link'>
    <a href='#' class='btn btn-raised btn-default btn-sm'>{{ _('ticket_comment_create') }}</a>
</h4>

<div id='comment-form-placeholder'>
    <form id='comment-form' action='' method='post' class='well' style='display: none;'>
        <div id='comment-preview-placeholder'></div>
        <input type='hidden' name='thread' value='{{ _['thread'] }}' />
        <input type='hidden' name='parent' value='0' />
        <input type='hidden' name='id' value='0' />

        <div class='form-group'>
            <label for='comment-editor'></label>
            <textarea name='text' id='comment-editor' cols='30' rows='10' class='form-control'></textarea>
        </div>

        <div class='theme-form-actions'>
            <input type='button' class='btn btn-raised btn-default btn-sm preview' value='{{ _('ticket_comment_preview') }}' title='Ctrl + Enter' />
            <input type='submit' class='btn btn-raised btn-primary btn-sm submit' value='{{ _('ticket_comment_save') }}' title='Ctrl + Shift + Enter' />
            <span class='time'></span>
        </div>
    </form>
</div>