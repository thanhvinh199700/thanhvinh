@extends("layouts.admin")
@section('content')
<h2>FROM CREATE CATEGORY</h2>
<form method=post  action= "" >
    @include('error') 
    @csrf
    
    <div class="form-group row">
        <label for="inputCatname" class="col-sm-2 col-form-label">Category Name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputCatname" name="inputCatname"placeholder="Nhập vào Category Name">
        </div>
    </div>

    <div class="form-group row">
        <label for="selectParent" class="col-sm-2 col-form-label">Parent</label>
        <div class="col-sm-10">
            <select class="custom-select" required id="selectParent"name="selectParent" width="100%">
                <option value="0" selected>không có</option>
                @foreach($categories as $category)
                <option value="{{$category->id}}">{{$category->category_name}}</option> 
                @endforeach 

            </select>
        </div>
    </div>


    <fieldset class="form-group">
        <div class="row">
            <label  class="col-sm-2 col-form-label">Status</label>
            <div class="col-sm-10">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="radioStatus" id="radioPublic1" value="1" checked>
                    <label class="form-check-label" for="radioPublic1">
                        YES
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="radioStatus" id="radioPublic2" value="0">
                    <label class="form-check-label" for="radioPublic2">
                        NO
                    </label>
                </div>

            </div>
        </div>


    </fieldset>
    <fieldset class="form-group">
        <div class="row">
            <label  class="col-sm-2 col-form-label">Trash</label>
            <div class="col-sm-10">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="radioTrash" id="radioHasChild1" value="0" checked>
                    <label class="form-check-label" for="radioHasChild1">
                        NO
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="radioTrash" id="radioHasChild2" value="1">
                    <label class="form-check-label" for="radioHasChild2">
                        YES
                    </label>
                </div>

            </div>
        </div>
    </fieldset>




    <div class="form-group row">
        <div class="col-sm-10">
            <button type="submit" class="btn btn-primary">thêm mới</button>
        </div>
    </div>
</form>
@endsection