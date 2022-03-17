    img = imread('para.jpg');
    th = graythresh(img);%Otsu methodunu kullanarak genel bir eþik seviyesi hesaplar
    bw = imcomplement(im2bw(img,th));  %gri seviyeli resimlerde negatiflik alir
    bw = bwareaopen(bw,30);  % 30pixelden kucuk alanlar kaldiriliyor.
    bw = imfill(bw,'holes'); %Beyaz kýsýmiçerisindeki boþluklar dolduruluyor.
    SE =strel('disk', 11);    % birlesik madeni paralarin ayrilmasi saglaniyor.
    bw2 = imerode(bw,SE);
    [L,num] = bwlabel(bw2);  % num ile para adetini ogrendik ve etiket atadik
    stats = regionprops(bw2, 'Area');

    count = 0;
    for n=1:num
        P(n)=stats(n).Area;
        a = stats(n).Area;% her paranýn alanýný öðrendik. Boyutlara göre hesaplama yaptýk.
        
        switch logical(true)
            case a> 1200
                 count = count + 1;
            case a >800  &&  a < 1000
                count = count + 0.5;
            case a >500 &&  a < 800
                count = count + 0.25;
            case a > 330 &&  a < 500
                count = count + 0.10;
            otherwise
                 count = count + 0.05;
        end
    end

   subplot(1,3,1), imshow(img)
   title(['Toplam para miktari = ',num2str(count),' TL'])
   subplot(1,3,2), imshow(bw)
   subplot(1,3,3), imshow(bw2)