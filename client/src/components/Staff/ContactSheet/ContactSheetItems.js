import React, { useState } from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
// import mapStoreToProps from '../../redux/mapStoreToProps';
import { Container, Grid, Typography } from '@material-ui/core';

function ContactSheetItems(props) {
  console.log('props', props);
  

  return (
    <Container>
      <Grid container>
        <Grid item>
          <Typography>
            {props.contact.first_name}{props.contact.last_name} can be contacted at {props.contact.email}
          </Typography>
        </Grid>
      </Grid>
      <Grid container>
        <Grid item>
          <Typography>
            They are interested in: {props.contact.breed} {props.contact.animal_type} 
            {props.contact.name} for ${props.contact.price}
          </Typography>
          </Grid>
      </Grid>
    </Container>
  );
}

export default connect()(withRouter((ContactSheetItems)));
