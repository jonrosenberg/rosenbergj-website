// <nowiki>

/**
 * Workaround for [[bugzilla:708]] via [[Template:InterProject]].
 * Originally based on code from [[wikt:de:MediaWiki:Common.js]] by [[wikt:de:User:Melancholie]],
 * cleaned up and modified for compatibility with the Vector skin.
 *
 * Maintainers: [[User:Krinkle]], [[User:Ilmari Karonen]]
 */
$( function () {
    if ( document.getElementById('p-interproject') ) return;  // avoid double inclusion

    var interPr = document.getElementById('interProject');
    var sisterPr = document.getElementById('sisterProjects');
    if (!interPr) return;

    var toolBox = document.getElementById('p-tb');
    var panel;
    if (toolBox) {
        panel = toolBox.parentNode;
    } else {
        // stupid incompatible skins...
        var panelIds = ['mw-panel', 'panel', 'column-one', 'mw_portlets'];
        for (var i = 0; !panel && i < panelIds.length; i++) {
             panel = document.getElementById(panelIds[i]);
        }
        // can't find a place for the portlet, try to undo hiding
        if (!panel) {
            mw.util.addCSS('#interProject, #sisterProjects { display: block; }');
            return;
        }
    }

    mw.util.addCSS('#interProject, #sisterProjects { display: none; }');

    var interProject = document.createElement("div");
    interProject.id = "p-interproject";

    interProject.className = (mw.config.get('skin') == 'vector' ? 'portal' : 'portlet');

    interProject.innerHTML =
        '<h3>' +
        (sisterPr && sisterPr.firstChild ? sisterPr.firstChild.innerHTML : "Sister Projects") +
        '<\/h3><div class="' + (mw.config.get('skin') == "vector" ? "body" : "pBody") +'">' +
        interPr.innerHTML + '<\/div>';

    if (toolBox && toolBox.nextSibling) {
        panel.insertBefore(interProject, toolBox.nextSibling);
    } else {
        panel.appendChild(interProject);
    }
    var state = $.cookie('vector-nav-' + interProject.id);
    if (state === 'true') {
        $(interProject).addClass('expanded').find('.body, .pBody').show();
    } else {
        $(interProject).addClass('collapsed');
    }
} );