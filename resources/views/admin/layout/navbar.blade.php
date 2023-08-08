<nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur"
    navbar-scroll="true">
    <div class="container-fluid py-1 px-3">

        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
            <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                @if (session('success'))
                    <div class="alert alert-success alert-sm" role="alert">
                        {{ session('success') }}
                    </div>
                @endif

                @if (session('error'))
                    <div class="alert alert-danger alert-sm" role="alert">
                        {{ session('error') }}
                    </div>
                @endif
            </div>
            <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                <div class="input-group">
                    <span class="input-group-text text-body"><i class="fas fa-search" aria-hidden="true"></i></span>
                    <input type="text" class="form-control" placeholder="Type here..." name=''>
                </div>
            </div>
            <ul class="navbar-nav  justify-content-end">

                <li class="nav-item d-flex align-items-center">
                    <a href="javascript:;" class="nav-link text-body font-weight-bold px-0">
                        <i class="fa fa-user me-sm-1"></i>
                        <span class="d-sm-inline d-none">{{ Auth::user()->name }}</span>
                    </a>
                </li>

            </ul>
        </div>
    </div>
</nav>
