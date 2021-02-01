import React, { useState, useEffect } from 'react';
import { connect } from 'react-redux';
import mapStoreToProps from '../../../redux/mapStoreToProps';
import { Container, Typography } from '@material-ui/core';
import ContactSheetItems from './ContactSheetItems';

function ContactSheet(props) {
  useEffect(() => {
    props.dispatch({
      type: 'FETCH_CONTACTS'
    })
  }, [])

  return (
    <Container>
        {props.store.contactsReducer.map((contact, i) =>
        <ContactSheetItems
        key={i}
        contact={contact}
        />
        )}
    </Container>
  );
}

export default connect(mapStoreToProps)(ContactSheet);