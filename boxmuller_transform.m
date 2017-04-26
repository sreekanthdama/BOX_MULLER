% /*
% Box muller transform
%     Copyright (C) 2017  sreekanth
% 
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.
% 
%  * Author: sreekanth dama
%  * Contact: sreekanth@iith.ac.in
%  **/

clear all
N = 10^5;
MAX_RAND = 10^6;
x1 = (randi([1 MAX_RAND],1,N))/MAX_RAND;
x2 = (randi([1 MAX_RAND],1,N))/MAX_RAND;
r = sqrt(-2*log(x1));
re = r.*cos(2*pi*x2);
im = r.*sin(2*pi*x2);

mean(re)
mean(re.^2)