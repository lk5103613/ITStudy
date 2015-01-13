<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal fade bs-example-modal-lg" id="gifModal" tabindex="-1"
	role="dialog" aria-labelledby="gifModal" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="modal-title" id="gifModal" width="10">演示动画</h4>
			</div>
			<div class="modal-body">
				<img src="" id="gifImg" />
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary glyphicon glyphicon-chevron-left" id="btn_pre_gif"></button>
				<button type="button" class="btn btn-primary glyphicon glyphicon-chevron-right" id="btn_next_gif"></button>
				<button type="button" class="btn btn-default glyphicon glyphicon-floppy-save" data-dismiss="modal" id="btn_demo_download"></button>
			</div>
		</div>
	</div>
</div>