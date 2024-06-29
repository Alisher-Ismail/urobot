@extends('admin.base')
@section('content')
<div class="container-fluid px-4">
    <h1 class="mt-4">Xizmatlar/Dasturlar</h1>
    <div class="card shadow-lg border-0 rounded-lg mt-5">
        <div class="col-lg-8 card-body p-6">
            <form method="post" action="{{ route('service.store') }}" id="add-form" enctype="multipart/form-data">
                @csrf <!-- CSRF token -->
                <div class="mb-6">
                    <label for="title">Sarlavha</label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="Sarlavhani Kiriting" required />
                </div>
                <div class="mb-6">
                    <label for="content">Kontent</label>
                    <textarea class="form-control" id="content" name="content" aria-describedby="content" placeholder="Kontentni Kiriting" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Saqlash</button>
            </form>
        </div>
        <hr/>
        <div class="table-responsive" style="margin: 2%">
            <table id="datatablesSimple" class="table">
                <thead>
                    <tr class="table-dark">
                        <th>Sarlavha</th>
                        <th>Kontent</th>
                        <th>Yangilash | O`chirish</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($services as $s)
                    <tr class="align-middle">
                        <td>{{ $s->title }}</td>
                        <td>{!! $s->content !!}</td>
                        <td>
                            <a href="{{ route('service.edit', $s->id) }}" class="text-success"><i class="fas fa-edit fa-lg mx-1"></i></a>
                            <a href="{{ route('service.delete', $s->id) }}" 
                            class="text-danger" 
                            onclick="event.preventDefault(); 
                                        if(confirm('O`chirmoqchimisiz?')) {
                                            document.getElementById('delete-service-{{ $s->id }}').submit();
                                        }">
                                <i class="fas fa-trash fa-lg mx-1"></i>
                            </a>

                            <form id="delete-service-{{ $s->id }}" 
                                action="{{ route('service.delete', $s->id) }}" 
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
