# QazLatynConverter.Pascal

## Usage
> ```Pascal
> uses
>  QazLatynHelper;
>
> var
>   cyrlText: string = "Латын графикасына негізделген қазақ әліпбиінің конвертері";
>   latynText: string ;
> latynText := Cyrl2Latyn(PChar(cyrlText));
> writeln(latynText);
> ```
