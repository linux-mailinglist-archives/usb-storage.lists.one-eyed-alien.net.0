Return-Path: <usb-storage+bncBAABBKGH4XDAMGQE7GXGTUY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAD1BA74AB
	for <lists+usb-storage@lfdr.de>; Sun, 28 Sep 2025 18:34:50 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id af79cd13be357-81312a26ea3sf882064185a.0
        for <lists+usb-storage@lfdr.de>; Sun, 28 Sep 2025 09:34:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1759077289; cv=pass;
        d=google.com; s=arc-20240605;
        b=NQMGyWrmtl1433U9Fmv/ufFeBwfHi0CDA2ICpWDiCGw3TeuYS3ct9z2a+PtGlGEgvw
         oHAOVDm2eXDMhgW2rF8BWna9C2CLGV0rAe30ONtSBnYlgzaXkJ39b8Q7/kGomW7CCXq0
         FFjVE9QIv+2HQr55EDlkCEEwDrUWqodlhTXNIrD5+ro8Y0NOnQyyqjIVn8qUZ0I0pNTL
         0z62ROMVB3qfEBv/Niu1WzZ/SLxNY3aMnp5VnYq59tPH9f1SIDAlTcKIOGSB10MoU8jN
         tVS0L+QRCT7sChQBOI09H4l8hfhtsvcL7WKkmsLWRyN1jXXAA/6Pf6dqL6d9lk2JzJrh
         zFyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=FB0ZRt49aPFzWlPyJJDQPVKmpvSOB6Z3uHxPhSxMK18=;
        fh=K/IUYEFRHONQ4AWOvgmX0Fk1fb0CB5BCjrXGWoWhsOw=;
        b=lOV8IloqMIvibgt+FmaqQw8P7YZofa8CrSrv2j86sNyeWuu6L7Cvg7bxMYy2VFvagK
         C0QpyfMO53ofJHxrea80qRt9cQNoTiJOxLQKJkz+Zfd2tlwOJPfj+NcgDd1v6Fje3Bie
         ZlH1Me3aw1NxEroI6sWG90LB/VUDCSPldEDN1SIrF8+l9uDcDLzRd6vtNmoRyBIVaCE0
         Np0aaAQXkMxKW+lcwyFtdya+R0wNHKYrumyoubCyMxfj/jW5VKqAYDVF4JrGuSL/6OyS
         EDJvUxxQNbQcOEPeT8CVWi+5cbqvtQRmCBmruMREd5ymlnUSue4m6e5G/fcK8FRycPP4
         O4ow==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of han@boetes.org designates 185.69.247.128 as permitted sender) smtp.mailfrom=han@boetes.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=boetes.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1759077289; x=1759682089; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:subject:from:to:content-language:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FB0ZRt49aPFzWlPyJJDQPVKmpvSOB6Z3uHxPhSxMK18=;
        b=WZf42AW/z28yUYQaIlb+q6nGbTlq4AgXUw3SALyFgqGM4cdtLadqgGKAtQLfIUe4py
         tmrZjDABEWtrJPRIhWv2XD/OwGk8dFTrtXgmJv9PBUlL9vBYIM1LCG/IdhAaEjSESt5w
         /N12lDQnHyS1MEepjEsILvPCcWIQHiZbbS61E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759077289; x=1759682089;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:subject:from:to:content-language:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FB0ZRt49aPFzWlPyJJDQPVKmpvSOB6Z3uHxPhSxMK18=;
        b=pERysVmuFowSHdQbFYQiZ9ooHGTr5dHiCxEuKLTtgiFF+aWPohft2wM5OYtVOeItOl
         JIp6+kAuCbzB009j3UYgE38+gU2Pz2Ar1137oJaGuSF1eFXkARxtkiI7zxNwkrhPga1t
         vDYRN6sTw3oMFcvLZa9Ua0ezHdAXVhP29PHDQP/9Z0CkcSjSAFDERcAioTuJbd7IzWdg
         z8xgUhOUX+5jr2h2gLmNsNQIKBAZECR3KHmJI5mtgr2gxTqex2lzPzSudsO/YIQacwDU
         pYBhtu52F2DW10OL3kr8cEgij27v+Pxclsr/enPW5zNojwq3kKxWqbTLepncJyufFb8S
         Ma9A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX8UTv9q9yqgUCqNdcDam5wZObI1BtcNSQI2V9W/4QTYilctOaRocqQc6DrViao+EQmUQu7dg==@lfdr.de
X-Gm-Message-State: AOJu0YwfkNoM2Moz9oPCxO7AUqVMSNiLh1BGFQ5fMkIGAASybysrbUeE
	p4kk9p0I9rtDo9jheQlULVJRLG+vgpF+9DWChF1RJc+zg9L9Hm17X783hyeKbNtQYIg=
X-Google-Smtp-Source: AGHT+IGUvKyvKq1XnM+ytvZXr6vQ7hNX4uyPCI0Hhfmff8/PdqdWLdrpAzWrBm+t90nfVMKuG+Y6CQ==
X-Received: by 2002:a05:620a:460d:b0:851:133c:66c4 with SMTP id af79cd13be357-85adeb4dec5mr1726645185a.16.1759077288950;
        Sun, 28 Sep 2025 09:34:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="ARHlJd76OZEtEDSPQjxW+AZj6XDxnBMU1Bl44KzlKLpMcKUIbw=="
Received: by 2002:a05:622a:768b:b0:4d7:a20a:baad with SMTP id
 d75a77b69052e-4da7ee4f07cls50873661cf.1.-pod-prod-01-us; Sun, 28 Sep 2025
 09:34:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUX2Xwgm7oALfOSPHcarLR9m3FLBmGxgS7AapqbiydaM0Wl7OmZieqWa+plF+a9v73AQnUnsO0Rswq1Aw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1a22:b0:7fd:50bd:193b with SMTP id af79cd13be357-85adec4218amr1994714185a.14.1759077288461;
        Sun, 28 Sep 2025 09:34:48 -0700 (PDT)
Received: by 2002:aa7:ce09:0:b0:631:b5c2:e349 with SMTP id 4fb4d7f45d1cf-634b5e23ecamsa12;
        Sun, 28 Sep 2025 09:15:03 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVI6MdvGH7F0qQrUekYKV0ysXnEXlUuJrw/UKdi/dvUtRTj0PRoQO4Af2lBhm2KyMccAraEE8vX4qzTpw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:c0d:b0:b3f:f6d:1dae with SMTP id a640c23a62f3a-b3f0f7cbd1fmr30185466b.12.1759076101679;
        Sun, 28 Sep 2025 09:15:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1759076101; cv=none;
        d=google.com; s=arc-20240605;
        b=M0YhMgY3eN1nPRyBc+g7qkm8qKdFcUrG1VzgKoLb1N0YDHSIbVrwbqqUYDlegOgrf9
         UIrOguwDUetIBE+By78dzqKw/gSR/8HhP/V2D5XlIdJg+adW8eGFFjNH8v9DCK0aFTBF
         TMD40Tn1lG0n9CeQ6V9lmQyGex2PV1YEVxhMwcvtTOyHHiEjPQSsxUFfqLmrjTmrk68H
         NZHcha4mtvcICPMphHeLrErQ2UEDIBRiK6///KB3Prf/vrp1L16yNrZ/0ucntNDGySji
         /Dhp5+YRNvjDpraFzyb98d0xHHzECC4ZT8/pgMhY2eK8MrbB6/V9g/yNAVMiMqVY0XS5
         yR3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id;
        bh=I6iATtjgUH/LSpOGP1GsvABPvw0nTwdV0wWkrcsDbTw=;
        fh=w1giylt0bLyh1rWo1agSJaYosTIGrrEPTdBXjdMp/ug=;
        b=iNzOkTFYpGqi0n2QnPxFtuX/lQVUUgYJNAzAn41hMZ8ymijq8ASPIROfpzmBoEJOQL
         k7CuhwquKdsijsvygiok1C60OPtBJ1IM2HHIGcTXhZD3S2AMf/obHxPd2A7hM+U8I/8t
         PghPrF+lr0X/jrZBCxCV2rY8Nh5CVYAWu0LEvVlfk/82QBfw8hKx6uBieJkQ9NN0z3zQ
         1/zToXS9Fp4UT/s5p6zUuDYVEUJLDFVgvqvGd4wQE4/ZH9wlzHrvfKrhQyCwJmAScPug
         5ntJJ5vdb6qZHO4LD1upq0Xv0NUjsfPiSHLNjgcGSgWM3BD6jrT2KiLcJZRDP20hXup2
         xThw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of han@boetes.org designates 185.69.247.128 as permitted sender) smtp.mailfrom=han@boetes.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=boetes.org
Received: from framboos.boetes.org (framboos.boetes.org. [185.69.247.128])
        by mx.google.com with ESMTPS id a640c23a62f3a-b3aa7137a34si232752566b.963.2025.09.28.09.15.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 09:15:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of han@boetes.org designates 185.69.247.128 as permitted sender) client-ip=185.69.247.128;
Received: from [192.168.254.99] (unknown [192.168.254.99])
	by framboos.boetes.org (Postfix) with ESMTPSA id 265177F52FD8;
	Sun, 28 Sep 2025 16:14:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="------------0uvrvbMywfMw2uBKbYc9cqYu"
Message-ID: <46fbc203-9ff9-4012-86e9-f9737a0e78e5@boetes.org>
Date: Sun, 28 Sep 2025 18:14:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Content-Language: en-US
To: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
From: Han Boetes <han@boetes.org>
Subject: [usb-storage] As per request.
X-Original-Sender: han@boetes.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of han@boetes.org designates 185.69.247.128 as permitted sender)
 smtp.mailfrom=han@boetes.org;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=boetes.org
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

This is a multi-part message in MIME format.
--------------0uvrvbMywfMw2uBKbYc9cqYu
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

[Sep29 00:57] [Mon Sep 29 00:57:28 2025] usb 1-2: new high-speed USB=20
device number 5 using xhci_hcd
[=C2=A0 +0.127881] [Mon Sep 29 00:57:28 2025] usb 1-2: New USB device found=
,=20
idVendor=3D0603, idProduct=3D8611, bcdDevice=3D 1.00
[=C2=A0 +0.000018] [Mon Sep 29 00:57:28 2025] usb 1-2: New USB device=20
strings: Mfr=3D1, Product=3D2, SerialNumber=3D3
[=C2=A0 +0.000005] [Mon Sep 29 00:57:28 2025] usb 1-2: Product: Fly12 Sport
[=C2=A0 +0.000004] [Mon Sep 29 00:57:28 2025] usb 1-2: Manufacturer: Cycliq
[=C2=A0 +0.000004] [Mon Sep 29 00:57:28 2025] usb 1-2: SerialNumber:=20
966110000000100
[=C2=A0 +0.645032] [Mon Sep 29 00:57:29 2025] usb-storage 1-2:1.0: USB Mass=
=20
Storage device detected
[=C2=A0 +0.000406] [Mon Sep 29 00:57:29 2025] usb-storage 1-2:1.0: Quirks=
=20
match for vid 0603 pid 8611: 4000
[=C2=A0 +0.000007] [Mon Sep 29 00:57:29 2025] usb-storage 1-2:1.0: This=20
device (0603,8611,0100 S 06 P 50) has unneeded SubClass and Protocol=20
entries in unusual_devs.h (kernel 6.17.0-0.rc7.56.fc43.x86_64)
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Please send a copy of this message to=20
<linux-usb@vger.kernel.org> and <usb-storage@lists.one-eyed-alien.net>
[=C2=A0 +0.000129] [Mon Sep 29 00:57:29 2025] scsi host0: usb-storage 1-2:1=
.0
[=C2=A0 +0.000310] [Mon Sep 29 00:57:29 2025] usbcore: registered new=20
interface driver usb-storage
[=C2=A0 +0.007605] [Mon Sep 29 00:57:29 2025] usbcore: registered new=20
interface driver uas

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/46fbc203-9ff9-4012-86e9-f9737a0e78e5%40boetes.o=
rg.

--------------0uvrvbMywfMw2uBKbYc9cqYu
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html data-lt-installed=3D"true">
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body style=3D"padding-bottom: 1px;">
    <p><font face=3D"Noto Serif">[Sep29 00:57] [Mon Sep 29 00:57:28 2025]
        usb 1-2: new high-speed USB device number 5 using xhci_hcd<br>
        [=C2=A0 +0.127881] [Mon Sep 29 00:57:28 2025] usb 1-2: New USB devi=
ce
        found, idVendor=3D0603, idProduct=3D8611, bcdDevice=3D 1.00<br>
        [=C2=A0 +0.000018] [Mon Sep 29 00:57:28 2025] usb 1-2: New USB devi=
ce
        strings: Mfr=3D1, Product=3D2, SerialNumber=3D3<br>
        [=C2=A0 +0.000005] [Mon Sep 29 00:57:28 2025] usb 1-2: Product: Fly=
12
        Sport=C2=A0<br>
        [=C2=A0 +0.000004] [Mon Sep 29 00:57:28 2025] usb 1-2: Manufacturer=
:
        Cycliq=C2=A0<br>
        [=C2=A0 +0.000004] [Mon Sep 29 00:57:28 2025] usb 1-2: SerialNumber=
:
        966110000000100<br>
        [=C2=A0 +0.645032] [Mon Sep 29 00:57:29 2025] usb-storage 1-2:1.0:
        USB Mass Storage device detected<br>
        [=C2=A0 +0.000406] [Mon Sep 29 00:57:29 2025] usb-storage 1-2:1.0:
        Quirks match for vid 0603 pid 8611: 4000<br>
        [=C2=A0 +0.000007] [Mon Sep 29 00:57:29 2025] usb-storage 1-2:1.0:
        This device (0603,8611,0100 S 06 P 50) has unneeded SubClass and
        Protocol entries in unusual_devs.h (kernel
        6.17.0-0.rc7.56.fc43.x86_64)<br>
        =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Please send a copy of this message
        to <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:linux-usb@vger=
.kernel.org">&lt;linux-usb@vger.kernel.org&gt;</a> and
        <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usb-storage@lists=
.one-eyed-alien.net">&lt;usb-storage@lists.one-eyed-alien.net&gt;</a><br>
        [=C2=A0 +0.000129] [Mon Sep 29 00:57:29 2025] scsi host0: usb-stora=
ge
        1-2:1.0<br>
        [=C2=A0 +0.000310] [Mon Sep 29 00:57:29 2025] usbcore: registered n=
ew
        interface driver usb-storage<br>
        [=C2=A0 +0.007605] [Mon Sep 29 00:57:29 2025] usbcore: registered n=
ew
        interface driver uas<br>
      </font><br>
    </p>
  </body>
  <lt-container></lt-container>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/46fbc203-9ff9-4012-86e9-f9737a0e78e5=
%40boetes.org?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google=
.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/46fbc203-9ff9-4012-86e9=
-f9737a0e78e5%40boetes.org</a>.<br />

--------------0uvrvbMywfMw2uBKbYc9cqYu--
