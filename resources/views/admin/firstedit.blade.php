@extends('admin.base')
@section('content')
<div class="container-fluid px-4">
    <h1 class="mt-4">Banner Sahifasini Yangilash</h1>
    <div class="card shadow-lg border-0 rounded-lg mt-5">
        <div class="col-lg-8 card-body p-4">
            <form method="post" action="{{ route('first.update', $first->id) }}" id="edit-form" enctype="multipart/form-data">
                @csrf <!-- CSRF token -->
                <div class="mb-3">
                    <label for="content">Kontent</label>
                    <textarea class="form-control" id="content" name="content" placeholder="Kontentni Kiriting" required>{{ $first->content }}</textarea>
                </div>
                <div class="mb-3">
                    <label for="image">Rasm</label>
                    <input type="file" class="form-control-file" id="image" name="image">
                    <img src="{{ asset($first->image) }}" width="100" class="img-thumbnail mt-1">
                    <input type="hidden" name="old_image" value="{{ $first->image }}">
                </div>
                <button type="submit" class="btn btn-primary">Yangilash</button>
            </form>
        </div>

        <hr/>
        <div class="table-responsive" style="margin: 2%">
            <table id="datatablesSimple" class="table">
                <thead>
                    <tr class="table-dark">
                        <th>Kontent</th>
                        <th>Rasm</th>
                        <th>Yangilash/O`chirish</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($frt as $f)
                    <tr class="align-middle">
                        <td>{{ $f->content }}</td>
                        <td><img src="{{ asset($f->image) }}" alt="" width="50" class="img-thumbnail"></td>
                        <td>
                            <a href="{{ route('first.edit', $f->id) }}" class="text-success"><i class="fas fa-edit fa-lg mx-1"></i></a>
                            <a href="{{ route('first.delete', $f->id) }}" 
                            class="text-danger" 
                            onclick="event.preventDefault(); 
                                        if(confirm('O`chirmoqchimisiz?')) {
                                            document.getElementById('delete-first-{{ $f->id }}').submit();
                                        }">
                                <i class="fas fa-trash fa-lg mx-1"></i>
                            </a>

                            <form id="delete-first-{{ $f->id }}" 
                                action="{{ route('first.delete', $f->id) }}" 
                                method="POST" 
                                style="display: none;">
                                @csrf
                                @method('DELETE')
                            </form>

                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
