@extends('layouts.app')

@section('content')
    <div class="container mt-5">
      
          
                <div class="card table-responsive">
                    <div class="card-header">
                        My Camps
                    </div>
                    <div class="card-body">
                        @include('components.alert')
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>User</th>
                                    <th>Camp</th>
                                    <th>Price</th>
                                    <th>Register Data</th>
                                    <th>Paid Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($checkouts as $checkout)
                                    <tr>
                                        <td>{{$checkout->User->name}}</td>
                                        <td>{{$checkout->Camp->title}}</td> 
                                        <td>{{$checkout->Camp->price}}</td>
                                        <td>{{$checkout->created_at->format('M d Y')}}</td>
                                        <td>
                                            @if ($checkout->is_paid)
                                                <span class="badge bg-success">Paid</span>    
                                            @else
                                                <span class="badge bg-warning">Waiting</span>
                                            @endif
                                        </td>
                                        @if (!$checkout->is_paid)
                                        <td>
                                            
                                                <form action="{{route('admin.checkout.update', $checkout->id)}}" method="post">
                                                    @csrf
                                                    <button class="btn btn-primary btn-sm">Set to Paid</button>
                                                </form>
                                           
                                        </td>
                                        @endif
                                        <td>
                                            <a href="/delete_checkout/{{  $checkout->id }}">
                                                <button type="button" class="btn btn-danger">Hapus</button>
                                            </a>
                                            
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="3">No Camps registered</td>
                                    </tr>
                                    
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
                <form action="/upload_gambar" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="modalcarouselLabel">Input Gambar</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="mb-3">
                                    <label for="formFile" class="form-label">Pilih Foto</label>
                                    <input class="form-control" type="file" name="foto" id="formFile">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" value="Upload" class="btn btn-primary">
                            </div>
                        </div>
                    </div>
                </form>
       
    </div>
@endsection