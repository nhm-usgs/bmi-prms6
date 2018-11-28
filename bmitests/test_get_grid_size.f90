    program test_get_grid_size

    use bmif, only: BMI_FAILURE
    use bmiprms
    use fixtures, only: config_file, status

    implicit none

    integer, parameter :: grid_id = 0
    integer, parameter :: expected_size = 14

    type (bmi_prms) :: m
    integer :: grid_size
    !config_file = "..\tests\pipestem\config.default"
    status = m%initialize(config_file)
    status = m%get_grid_size(grid_id, grid_size)
    status = m%finalize()

    if (grid_size.ne.expected_size) then
        stop BMI_FAILURE
    end if
    end program test_get_grid_size
