<div class="block">
    <h2 class='sdstitle_block'><a href="{smartblog::GetSmartBlogLink('smartblog')}">{l s='Latest News' mod='smartbloghomelatestnews'}</a></h2>
    <div class="sdsblog-box-content">
        {if isset($view_data) AND !empty($view_data)}
            {assign var='i' value=1}
            {foreach from=$view_data item=post}
            
                    {assign var="options" value=null}
                    {$options.id_post = $post.id}
                    {$options.slug = $post.link_rewrite}
                    <div id="sds_blog_post" class="col-xs-12 col-sm-4 col-md-3">
                        <div class="news_module_image_holder">
                        {assign var="activeimgincat" value='0'}
                        {$activeimgincat = $smartshownoimg} 
                        {if ($post.post_img != "no" && $activeimgincat == 0) || $activeimgincat == 1}
                             <a href="{smartblog::GetSmartBlogLink('smartblog_post',$options)}"><img alt="{$post.title}" class="feat_img_small" src="{$modules_dir}smartblog/images/{$post.post_img}-home-default.jpg"></a>
                        {/if}
                        </div>
                        <span>{$post.date_added|date_format}</span>
                        <h4 class="sds_post_title{if $post.is_featured}_is_featured{/if}"><a href="{smartblog::GetSmartBlogLink('smartblog_post',$options)}">{$post.title}</a></h4>
                        <p>
                            {$post.short_description|escape:'htmlall':'UTF-8'}
                        </p>
                        <a href="{smartblog::GetSmartBlogLink('smartblog_post',$options)}"  class="r_more"><strong>{l s='Read More' mod='smartbloghomelatestnews'}</strong></a>
                    </div>
                
                {$i=$i+1}
            {/foreach}
        {/if}
     </div>
</div>