    program test_get_grid_x

    use bmif, only: BMI_FAILURE
    use bmiprms
    use fixtures, only: config_file, status

    implicit none
    character (len=*), parameter :: var_name_x = "hru_x"
    character (len=*), parameter :: var_name_y = "hru_y"
    character (len=*), parameter :: var_name_z = "hru_elev"
    integer, parameter :: nx = 14
    real, parameter, dimension(nx) :: expected_x = (/ -255338.760763, &
        -244755.020005, -272161.743193, -279352.524309, -239341.256696, -234624.839073, &
        -262778.080138, -260845.492456, -253183.809318, -252164.891785, -242704.525443, &
        -238578.574622, -226690.952279, -238430.321946 /)
    real, parameter, dimension(nx) :: expected_y = (/ 2703661.38298, &
        2718133.8501, 2714044.62247, 2715510.13703, 2702018.13935, 2710288.03029, &
        2715710.1718, 2722800.42893, 2722857.94522, 2727314.61359, 2707930.88108, &
        2709141.60178, 2695859.03186, 2691322.80151 /)
    real, parameter, dimension(nx) :: expected_z = (/ 568.0, 483.0, 563.0, 564.0, 519.0, &
        483.0, 543.0, 503.0, 490.0, 489.0, 519.0, 474.0, 476.0, 553.0 /)
    type (bmi_prms) :: m
    real, dimension(nx) :: grid_x, grid_y, grid_z
    integer :: i
    integer :: grid_id

    status = m%initialize(config_file)
    
    status = m%get_var_grid(var_name_x, grid_id)
    status = m%get_grid_x(grid_id, grid_x)
    
    status = m%get_var_grid(var_name_y, grid_id)
    status = m%get_grid_y(grid_id, grid_y)
    
    status = m%get_var_grid(var_name_z, grid_id)
    status = m%get_grid_z(grid_id, grid_z)
    status = m%finalize()

    print *, grid_x
    print *, expected_x

    do i = 1, nx
        if (grid_x(i).ne.expected_x(i)) then
            stop BMI_FAILURE
        elseif (grid_y(i).ne.expected_y(i)) then
            stop BMI_FAILURE
        elseif( grid_z(i).ne.expected_z(i)) then
            stop BMI_FAILURE
        end if
    end do
    end program test_get_grid_x