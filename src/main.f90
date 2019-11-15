program prms_bmi_app
    use bmiprms
    use variableKind
    use prms_constants
    implicit none
    type (bmi_prms) :: prms_m
    character(len=:), allocatable :: control_filename
    INTEGER(4) :: s
    real(r64) :: time0, time1, time
    call get_control_filename(control_filename)
    write(*,*)'file name: ', control_filename
    write(*,"(a)") "Initializing...."
    s = prms_m%initialize(control_filename)
    write(*,*) "Done Initializing."
    s = prms_m%get_start_time(time0)
    write(*,"(a30,f8.2)") "Start time:", time0
    s = prms_m%get_end_time(time1)
    write(*,"(a30,f8.2)") "End time:", time1
    s = prms_m%get_current_time(time)
    write(*,"(a30,f8.2)") "Current time:", time
    
    write(*,"(a)") "Running"
    do while(time <= time1)
        s = prms_m%update()
        s = prms_m%get_current_time(time)
        write(*,"(a30,f8.2)") "Current time:", time
    enddo
    
    s = prms_m%finalize()
contains

  !***********************************************************************
  ! Get Control File from command line or user interaction.
  !***********************************************************************
  subroutine get_control_filename(control_filename)
    use m_fileIO, only: fileExists
    implicit none

    character(len=:), allocatable, intent(inout) :: control_filename
      !! Name of the control file

    ! Functions
    intrinsic :: GET_COMMAND_ARGUMENT, COMMAND_ARGUMENT_COUNT, TRIM

    ! Local Variables
    character(len=:), allocatable :: command_line_arg
    ! character(len=256) :: buffer    ! contains user-supplied input for filename
    integer(i32) :: status
    integer(i32) :: nchars
    integer(i32) :: numargs
    ! logical :: exists

    !***********************************************************************
    ! Subroutine GET_COMMAND_ARGUMENT is a Fortran 2003 routne and may not
    ! be available with all compilerst.
    ! This routine expects the Control File name, if present, to be the first
    ! argument.
    !      call GET_COMMAND(command_line)
    !      print *, 'Command line: ', TRIM(command_line)
    numargs = COMMAND_ARGUMENT_COUNT()

    ! Get the length of the first command-line argument and allocate character array
    call GET_COMMAND_ARGUMENT(1, length=nchars)
    allocate(character(nchars) :: command_line_arg)

    call GET_COMMAND_ARGUMENT(1, value=command_line_arg, status=status)

    if (status == 0) then
      if (command_line_arg == '-C') then
        ! Get length of second cmdline parameter and allocate Model_control_file
        call GET_COMMAND_ARGUMENT(2, length=nchars)
        allocate(character(nchars) :: control_filename)

        call GET_COMMAND_ARGUMENT(2, value=control_filename, status=status)
        if (status /= 0) STOP 'ERROR, bad argment value after -C argument'
      else
        ! PAN: would this occur if the control filename was provided without -C?
        control_filename = command_line_arg
      endif
    else
      ! PAN: No control file specified on command line; for now just use a default control filename
      control_filename = 'control'
    endif

    ! INQUIRE (FILE=control_filename, EXIST=exists)
    if (.not. fileExists(control_filename)) then
      write(*, '(/,A)') 'Control File does not exist, file name: ' // control_filename
      write(*, *) 'Note: Control File names cannot include spaces'
      STOP
    endif
  end subroutine
    
end program prms_bmi_app