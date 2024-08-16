;(function($, win, doc) {
    $.extend($.fn, {

        inputValueClear: function(inputSelect) {
            var $btnDel = $(this).find('.btnDel');
            var $input = $(this).find(inputSelect);

            $btnDel.on('click', function() {
                $(this).closest('div').find('input').val('').focus();
            });
        }

    });

    $(document).ready(function() {
        // inputValueClear 함수 호출
        $('.inputForm').inputValueClear('.searchInput');
    });

})(jQuery, window, document);
