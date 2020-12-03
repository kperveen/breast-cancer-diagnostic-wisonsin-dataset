
SELECT diagnosis, COUNT(diagnosis) as cancer_types FROM cancer.data GROUP BY diagnosis;

 select 'Radius mean distribution ' || ' MIN = ' ||  MIN(radius_mean) as min, ' MAX = ' || MAX(radius_mean) as max, ' AVERAGE =  ' || AVG(radius_mean) as avg,
 ' PERCENTILE ' || percentile_approx(radius_mean, 0.99), ' Standard Deviation ' || stddev(radius_mean) as sdtdev FROM cancer.data;


 select 'Texture mean distribution ' || ' MIN = ' ||  MIN(texture_mean) as min, ' MAX = ' || MAX(texture_mean) as max, ' AVERAGE =  ' || AVG(texture_mean) as avg,
 ' PERCENTILE ' || percentile_approx(texture_mean, 0.99), ' Standard Deviation ' || stddev(texture_mean) as sdtdev FROM cancer.data;


 select 'Perimeter mean distribution ' || ' MIN = ' ||  MIN(perimeter_mean) as min, ' MAX = ' || MAX(perimeter_mean) as max, ' AVERAGE =  ' || AVG(perimeter_mean) as avg,
 ' PERCENTILE ' || percentile_approx(perimeter_mean, 0.99), ' Standard Deviation ' || stddev(perimeter_mean) as sdtdev FROM cancer.data;


 select 'Area mean distribution ' || ' MIN = ' ||  MIN(area_mean) as min, ' MAX = ' || MAX(area_mean) as max, ' AVERAGE =  ' || AVG(area_mean) as avg, ' PERCENTILE ' ||
 percentile_approx(area_mean, 0.99), ' Standard Deviation ' || stddev(area_mean) as sdtdev FROM cancer.data;


 select 'Smoothness mean distribution ' || ' MIN = ' ||  MIN(smoothness_mean) as min, ' MAX = ' || MAX(smoothness_mean) as max, ' AVERAGE =  ' || AVG(smoothness_mean)
 as avg, ' PERCENTILE ' || percentile_approx(smoothness_mean, 0.99), ' Standard Deviation ' || stddev(smoothness_mean) as sdtdev FROM cancer.data;

 select 'Compactness mean distribution ' || ' MIN = ' ||  MIN(compactness_mean) as min, ' MAX = ' || MAX(compactness_mean) as max, ' AVERAGE =  ' || AVG(compactness_mean)
 as avg, ' PERCENTILE ' || percentile_approx(compactness_mean, 0.99), ' Standard Deviation ' || stddev(compactness_mean) as sdtdev FROM cancer.data;

 select 'Concavity mean distribution ' || ' MIN = ' ||  MIN(concavity_mean) as min, ' MAX = ' || MAX(concavity_mean) as max, ' AVERAGE =  ' || AVG(concavity_mean)
 as avg, ' PERCENTILE ' || percentile_approx(concavity_mean, 0.99), ' Standard Deviation ' || stddev(concavity_mean) as sdtdev FROM cancer.data;

 select 'Concave points mean distribution ' || ' MIN = ' ||  MIN(concave_points_mean) as min, ' MAX = ' || MAX(concave_points_mean) as max,
 ' AVERAGE =  ' || AVG(concave_points_mean) as avg, ' PERCENTILE ' || percentile_approx(concave_points_mean, 0.99),
 ' Standard Deviation ' || stddev(concave_points_mean) as sdtdev FROM cancer.data;

 select 'Symmetry mean distribution ' || ' MIN = ' ||  MIN(symmetry_mean) as min, ' MAX = ' || MAX(symmetry_mean) as max,
 ' AVERAGE =  ' || AVG(symmetry_mean) as avg, ' PERCENTILE ' || percentile_approx(symmetry_mean, 0.99),
 ' Standard Deviation ' || stddev(symmetry_mean) as sdtdev FROM cancer.data;

  select 'Fractal Dimension mean distribution ' || ' MIN = ' ||  MIN(fractal_dimension_mean) as min, ' MAX = ' || MAX(fractal_dimension_mean) as max,
 ' AVERAGE =  ' || AVG(fractal_dimension_mean) as avg, ' PERCENTILE ' || percentile_approx(symmetry_mean, 0.99),
 ' Standard Deviation ' || stddev(fractal_dimension_mean) as sdtdev FROM cancer.data;

  select 'RSE distribution ' || ' MIN = ' ||  MIN(radius_se) as min, ' MAX = ' || MAX(radius_se) as max,
 ' AVERAGE =  ' || AVG(radius_se) as avg, ' PERCENTILE ' || percentile_approx(radius_se, 0.99),
 ' Standard Deviation ' || stddev(radius_se) as sdtdev FROM cancer.data;

  select 'Texture SE distribution ' || ' MIN = ' ||  MIN(texture_se) as min, ' MAX = ' || MAX(texture_se) as max,
 ' AVERAGE =  ' || AVG(texture_se) as avg, ' PERCENTILE ' || percentile_approx(texture_se, 0.99),
 ' Standard Deviation ' || stddev(texture_se) as sdtdev FROM cancer.data;

   select 'Texture SE distribution ' || ' MIN = ' ||  MIN(texture_se) as min, ' MAX = ' || MAX(texture_se) as max,
 ' AVERAGE =  ' || AVG(texture_se) as avg, ' PERCENTILE ' || percentile_approx(texture_se, 0.99),
 ' Standard Deviation ' || stddev(texture_se) as sdtdev FROM cancer.data;

   select 'Permieter SE distribution ' || ' MIN = ' ||  MIN(perimeter_se) as min, ' MAX = ' || MAX(perimeter_se) as max,
 ' AVERAGE =  ' || AVG(perimeter_se) as avg, ' PERCENTILE ' || percentile_approx(perimeter_se, 0.99),
 ' Standard Deviation ' || stddev(perimeter_se) as sdtdev FROM cancer.data;

    select 'Area SE distribution ' || ' MIN = ' ||  MIN(area_se) as min, ' MAX = ' || MAX(area_se) as max,
 ' AVERAGE =  ' || AVG(area_se) as avg, ' PERCENTILE ' || percentile_approx(area_se, 0.99),
 ' Standard Deviation ' || stddev(area_se) as sdtdev FROM cancer.data;

 select 'Smoothness SE distribution ' || ' MIN = ' ||  MIN(smoothness_se) as min, ' MAX = ' || MAX(smoothness_se) as max,
 ' AVERAGE =  ' || AVG(smoothness_se) as avg, ' PERCENTILE ' || percentile_approx(smoothness_se, 0.99),
 ' Standard Deviation ' || stddev(smoothness_se) as sdtdev FROM cancer.data;

  select 'Compactness SE distribution ' || ' MIN = ' ||  MIN(compactness_se) as min, ' MAX = ' || MAX(compactness_se) as max,
 ' AVERAGE =  ' || AVG(compactness_se) as avg, ' PERCENTILE ' || percentile_approx(compactness_se, 0.99),
 ' Standard Deviation ' || stddev(compactness_se) as sdtdev FROM cancer.data;

  select 'Concavity SE distribution ' || ' MIN = ' ||  MIN(concavity_se) as min, ' MAX = ' || MAX(concavity_se) as max,
 ' AVERAGE =  ' || AVG(concavity_se) as avg, ' PERCENTILE ' || percentile_approx(concavity_se, 0.99),
 ' Standard Deviation ' || stddev(concavity_se) as sdtdev FROM cancer.data;

 select 'Concave points SE distribution ' || ' MIN = ' ||  MIN(concave_points_se) as min, ' MAX = ' || MAX(concave_points_se) as max,
 ' AVERAGE =  ' || AVG(concave_points_se) as avg, ' PERCENTILE ' || percentile_approx(concave_points_se, 0.99),
 ' Standard Deviation ' || stddev(concave_points_se) as sdtdev FROM cancer.data;

  select 'Symmetry SE distribution ' || ' MIN = ' ||  MIN(symmetry_se) as min, ' MAX = ' || MAX(symmetry_se) as max,
 ' AVERAGE =  ' || AVG(symmetry_se) as avg, ' PERCENTILE ' || percentile_approx(symmetry_se, 0.99),
 ' Standard Deviation ' || stddev(symmetry_se) as sdtdev FROM cancer.data;

  select 'Fractal Dimension SE distribution ' || ' MIN = ' ||  MIN(fractal_dimension_se) as min, ' MAX = ' || MAX(fractal_dimension_se) as max,
 ' AVERAGE =  ' || AVG(fractal_dimension_se) as avg, ' PERCENTILE ' || percentile_approx(fractal_dimension_se, 0.99),
 ' Standard Deviation ' || stddev(fractal_dimension_se) as sdtdev FROM cancer.data;

 select 'Radius worst distribution ' || ' MIN = ' ||  MIN(radius_worst) as min, ' MAX = ' || MAX(radius_worst) as max,
 ' AVERAGE =  ' || AVG(radius_worst) as avg, ' PERCENTILE ' || percentile_approx(radius_worst, 0.99),
 ' Standard Deviation ' || stddev(radius_worst) as sdtdev FROM cancer.data;

  select 'Texture worst distribution ' || ' MIN = ' ||  MIN(texture_worst) as min, ' MAX = ' || MAX(texture_worst) as max,
 ' AVERAGE =  ' || AVG(texture_worst) as avg, ' PERCENTILE ' || percentile_approx(texture_worst, 0.99),
 ' Standard Deviation ' || stddev(texture_worst) as sdtdev FROM cancer.data;

   select 'Perimeter worst distribution ' || ' MIN = ' ||  MIN(perimeter_worst) as min, ' MAX = ' || MAX(perimeter_worst) as max,
 ' AVERAGE =  ' || AVG(perimeter_worst) as avg, ' PERCENTILE ' || percentile_approx(perimeter_worst, 0.99),
 ' Standard Deviation ' || stddev(perimeter_worst) as sdtdev FROM cancer.data;

 select 'Area worst distribution ' || ' MIN = ' ||  MIN(area_worst) as min, ' MAX = ' || MAX(area_worst) as max,
 ' AVERAGE =  ' || AVG(area_worst) as avg, ' PERCENTILE ' || percentile_approx(area_worst, 0.99),
 ' Standard Deviation ' || stddev(area_worst) as sdtdev FROM cancer.data;

 select 'Smoothness worst distribution ' || ' MIN = ' ||  MIN(smoothness_worst) as min, ' MAX = ' || MAX(smoothness_worst) as max,
 ' AVERAGE =  ' || AVG(smoothness_worst) as avg, ' PERCENTILE ' || percentile_approx(smoothness_worst, 0.99),
 ' Standard Deviation ' || stddev(smoothness_worst) as sdtdev FROM cancer.data;

select 'Compactness worst distribution ' || ' MIN = ' ||  MIN(compactness_worst) as min, ' MAX = ' || MAX(compactness_worst) as max,
 ' AVERAGE =  ' || AVG(compactness_worst) as avg, ' PERCENTILE ' || percentile_approx(compactness_worst, 0.99),
 ' Standard Deviation ' || stddev(compactness_worst) as sdtdev FROM cancer.data;

select 'Concavity worst distribution ' || ' MIN = ' ||  MIN(concavity_worst) as min, ' MAX = ' || MAX(concavity_worst) as max,
 ' AVERAGE =  ' || AVG(concavity_worst) as avg, ' PERCENTILE ' || percentile_approx(concavity_worst, 0.99),
 ' Standard Deviation ' || stddev(concavity_worst) as sdtdev FROM cancer.data;

select 'Concave points worst distribution ' || ' MIN = ' ||  MIN(concave_points_worst) as min, ' MAX = ' || MAX(concave_points_worst) as max,
 ' AVERAGE =  ' || AVG(concave_points_worst) as avg, ' PERCENTILE ' || percentile_approx(concave_points_worst, 0.99),
 ' Standard Deviation ' || stddev(concave_points_worst) as sdtdev FROM cancer.data;

select 'Symmetry worst distribution ' || ' MIN = ' ||  MIN(symmetry_worst) as min, ' MAX = ' || MAX(symmetry_worst) as max,
 ' AVERAGE =  ' || AVG(symmetry_worst) as avg, ' PERCENTILE ' || percentile_approx(symmetry_worst, 0.99),
 ' Standard Deviation ' || stddev(symmetry_worst) as sdtdev FROM cancer.data;

select 'Fractal Dimension worst distribution ' || ' MIN = ' ||  MIN(fractal_dimension_worst) as min, ' MAX = ' || MAX(fractal_dimension_worst) as max,
 ' AVERAGE =  ' || AVG(fractal_dimension_worst) as avg, ' PERCENTILE ' || percentile_approx(fractal_dimension_worst, 0.99),
 ' Standard Deviation ' || stddev(fractal_dimension_worst) as sdtdev FROM cancer.data;


