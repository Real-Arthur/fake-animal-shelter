import React, { useState } from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import mapStoreToProps from '../../redux/mapStoreToProps';
import { Box, Grid } from '@material-ui/core';

function Footer(props) {
  const [heading, setHeading] = useState('Footer');

  return (
    <Box>
      <Grid container direction='column' alignItems='center'>

      </Grid>
    </Box>
  );
}

export default connect(mapStoreToProps)(withRouter((Footer)));