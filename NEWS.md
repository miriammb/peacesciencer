peacesciencer 0.4.0 (in development)
---------------------------------------------------------------------

- Add `cow_mid_ddydisps`, `cow_mid_dirdisps`, and `cow_mid_disps` data.
- Add `gml_mid_ddydisps` data.
- Add `add_cow_mids()` function.
- Add `add_gml_mids()` function.
- Add `add_peace_years()` function.
- Deprecate `add_mids()`. Use `add_gml_mids()` instead.
- Assign `ps_data_type == "dyad_year"` as attribute to `cow_mid_dirdisps` and `gml_dirdisp`. This allows `{peacesciencer}` functions for these data sets.
- File compression for data files (again)

peacesciencer 0.3.0
---------------------------------------------------------------------

- Add `atop_alliance` (directed dyad-year) data
- Add `archigos` data
- Add `cow_sdp_gdp` and `gw_sdp_gdp` data
- Add `ucdp_acd` data
- Add `ucdp_onsets` data
- Add `add_archigos()` function
- Add `add_atop_alliance()` function
- Add `add_minimum_distance()` function. For now, this has no default. You must specify "gw" or "cow".
- Add `add_sdp_gdp()` function. For now, this has no default. You must specify "gw" or "cow".
- Add `add_ucdp_onset()` function.
- Add "stops" that force the correct merge on the correct system code. In most applications, this is Correlates of War codes. 
- File compression for data files (again)
- Fixed bug in `filter_prd()`. Past versions of my code had treated non-contiguous dyads as 6s. Here, they're 0s. That created situations where I wasn't filtering anything at all with this function.
- Rename variables in `cow_alliance` to distinguish from ATOP equivalents.


peacesciencer 0.2.0
---------------------------------------------------------------------

- Fix stupid mistake(s) in README.
- File compression for the data files.
- Add Correlates of War intergovernmental organizations data.
- Add function for adding Correlates of War intergovernmental organizations data.
- Add Correlates of War trade data (state-year and dyad-year).
- Add minimum distance data
- Add citations data frame for assistance in properly citing things.
- Add `create_statedays()` function.


peacesciencer 0.1.0
---------------------------------------------------------------------

- Initial developmental release
