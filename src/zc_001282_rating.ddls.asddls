@EndUserText.label: 'Rating'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_001282_RATING
  as projection on ZI_001282_RATING
{
  key RatingUuid,
      MovieUuid,
      UserName,
      Rating,
      RatingDate
}
