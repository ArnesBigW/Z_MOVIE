@EndUserText.label: 'Movie'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_001282_MOVIE
  as projection on ZI_001282_Movie
{
  key MovieUuid,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Title,
      Genre,
      PublishingYear,
      RuntimeInMin,
      @Semantics.imageUrl: true
      @UI.textArrangement: #TEXT_ONLY
      ImageUrl as MoviePoster,
      CreatedAt,
      CreatedBy,
      LastChangedAt,
      LastChangedBy,
      Rating
}
