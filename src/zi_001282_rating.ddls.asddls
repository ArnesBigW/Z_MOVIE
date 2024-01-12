@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Rating'
define view entity ZI_001282_RATING
  as select from zabap_rating_a
  association to parent ZI_001282_Movie as _Movie on $projection.MovieUuid = _Movie.MovieUuid


{
  key rating_uuid as RatingUuid,
      movie_uuid  as MovieUuid,
      user_name   as UserName,
      rating      as Rating,
      rating_date as RatingDate,
      
      _Movie
}
