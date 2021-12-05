const Eyeball = () => {
  return (
    <div>
      <svg
        className='eyeball'
        width='126'
        height='119'
        viewBox='0 0 126 119'
        fill='none'
        xmlns='http://www.w3.org/2000/svg'
      >
        <path
          d='M116 78.5C116 78.5 92.2711 114 63 114C33.7289 114 10 78.5 10 78.5'
          className='lid--btm'
          stroke='#26C9C3'
          strokeWidth='10'
          strokeLinecap='round'
          strokeLinejoin='round'
        />
        <circle cx='63' cy='78' r='17' fill='#26C9C3' className='pupil' />
        <g className='eyelid'>
          <path
            className='lid--top'
            d='M116 78.5C116 78.5 92.2711 43 63 43C33.7289 43 10 78.5 10 78.5'
            stroke='#26C9C3'
            strokeWidth='10'
            strokeLinecap='round'
            strokeLinejoin='round'
          />
          <path
            className='lash--mid'
            d='M63 24V5'
            stroke='#26C9C3'
            strokeWidth='10'
            strokeLinecap='round'
            strokeLinejoin='round'
          />
          <path
            d='M109 36.4545L118.5 20'
            className='lash--right'
            stroke='#26C9C3'
            strokeWidth='10'
            strokeLinecap='round'
            strokeLinejoin='round'
          />
          <path
            className='lash--left'
            d='M16.5 36.4545L7 20'
            stroke='#26C9C3'
            strokeWidth='10'
            strokeLinecap='round'
            strokeLinejoin='round'
          />
        </g>
      </svg>
    </div>
  );
};

export { Eyeball };
