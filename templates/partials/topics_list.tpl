<ul class="category-topics" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
	<div class="threadlisthead">
		<span class="threadinfo">
			<span class="threadtitle">
				<a>Título</a> /
				<a>Autor</a>
			</span>
		</span>
		<span class="threadstats"><a>Respuestas</a> / <a>Visitas</a></span>
		<span class="threadlastpost"><a>Último mensaje</a></span>
	</div>
	<meta itemprop="itemListOrder" content="descending">
	<!-- BEGIN topics -->
	<li class="category-item<!-- IF topics.locked --> locked<!-- ENDIF topics.locked --><!-- IF topics.pinned --> pinned<!-- ENDIF topics.pinned --><!-- IF topics.deleted --> deleted<!-- ENDIF topics.deleted --><!-- IF topics.userParticipated --> participated<!-- ENDIF topics.userParticipated --><!-- IF topics.isHot --> hot<!-- ENDIF topics.isHot --><!-- IF topics.unread --> unread<!-- ENDIF topics.unread -->" itemprop="itemListElement" data-tid="{topics.tid}" data-index="{topics.index}">
		<div class="panel panel-default topic-row clearfix">
			<div class="threadinfo">
				<a class="threadstatus"></a>
				<h3>
					<a href="{relative_path}/topic/{topics.slug}" itemprop="url">
						<meta itemprop="name" content="{topics.title}">

						<strong><i class="fa fa-thumb-tack<!-- IF !topics.pinned --> hide<!-- ENDIF !topics.pinned -->"></i> <i class="fa fa-lock<!-- IF !topics.locked --> hide<!-- ENDIF !topics.locked -->"></i></strong>
						<span class="topic-title">{topics.title}</span>
					</a>
				</h3>

				<small>
					Iniciado por <a href="<!-- IF topics.user.userslug -->{relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->">{topics.user.username}</a>, [[global:posted_ago, <span class="timeago" title="{topics.relativeTime}"></span>]]
				</small>
				
				<div class="threaddetails">
					<!-- IF topics.tags.length -->
					<img title="<!-- BEGIN tags -->[{topics.tags.value}] <!-- END tags -->" src="http://exo.do/images/exodo/misc/tag.png" alt="<!-- BEGIN tags -->[{topics.tags.value}] <!-- END tags -->">
					<!-- ENDIF topics.tags.length -->
				</div>
			</div>
			<ul class="threadstats">
				<li>[[global:posts]]: {topics.postcount}</li>
				<li>[[global:views]]: {topics.viewcount}</li>
			</ul>
			<dl class="threadlastpost">
				<!-- IF topics.unreplied -->
				<dd class="unreplied">
					[[category:no_replies]]
				</dd>
				<!-- ELSE -->
				<dd>
					<img class="user-pic" src="{topics.teaser.user.picture}" />&nbsp;
					<a href="<!-- IF topics.teaser.user.userslug -->{relative_path}/user/{topics.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.teaser.user.userslug -->">
						{topics.teaser.user.username}
					</a>
				</dd>
				<dd>
					[[global:replied_ago, <a href="{relative_path}/topic/{topics.slug}/{topics.teaser.index}" title="Ir al último mensaje" class="lastpost"><span class="timeago" title="{topics.teaser.timestamp}"></span>]] →</a>
				</dd>
				<!-- ENDIF topics.unreplied -->
			</dl>
			<!-- IF privileges.editable -->
			<label class="threadimod">
				<i class="fa fa-fw fa-square-o select pointer"></i>
			</label>
			<!-- ENDIF privileges.editable -->
		</div>
	</li>
	<!-- END topics -->
</ul>