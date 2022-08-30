Return-Path: <usb-storage+bncBC72LGEK34ERB4F3W2MAMGQEQXWV3HY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vs1-xe47.google.com (mail-vs1-xe47.google.com [IPv6:2607:f8b0:4864:20::e47])
	by mail.lfdr.de (Postfix) with ESMTPS id 331265A5B09
	for <lists+usb-storage@lfdr.de>; Tue, 30 Aug 2022 07:19:46 +0200 (CEST)
Received: by mail-vs1-xe47.google.com with SMTP id t125-20020a675f83000000b00390f57cf479sf144188vsb.11
        for <lists+usb-storage@lfdr.de>; Mon, 29 Aug 2022 22:19:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661836784; cv=pass;
        d=google.com; s=arc-20160816;
        b=adZrU8onKIJgKU50cuY0l3mzv8ssFIsOd0PTgnP9UVCwi6+XKQPPYxJc2r5oxGi4br
         ZU6lCeuJvojgQKW45OOEGFFjUuTnDMIdRa9YH6P+VjhN1v91MdgTsK1tV+k0vEz/SoRn
         JuoE2Wph+/iTJm4TaErMvNbSDKn4JCoeq3DxiWoUhBT9L1mgpirTTUFDakAMV2yXazmh
         WWGSQI8DeWK3tF/AaDaPdMFG1ERGxCqbtERT8hQZOTjf9YWLIGh4XbuuAd6Cz57WZloI
         fM4JIdnncneBRz216RCjWH96ElY5mst+O3MTtH8a5rYmFB8MHmSrENwRXslPwRdC4N+d
         sB1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=tU8s9UNnfm3P3ledIBbbvHodtnaHBz8mCGA55t/T8QY=;
        b=OAhfKGueDZxZgqFqZMvvDletOLPm6wq0fKi8ER74Hvhtlv97sDIaBqrTnIPTQDOLrS
         KUDQk+HE0OgMi1F0MlLUOMczwP0tm/BBwzyVjhtXKxdAnjeclLEr0XrYiCiMlv2fyx7g
         26MfaOriRRAInyHrIEYC0ab44fYa6/QdP7I2RnulQiZDoRfdP99FItqHF+NpDYxzRkuk
         AWfKo//KrKr9nLZJLtA8NLFWkcvI+ggxztrqk7kLbkSBjawtrquXp5cKpn8sffUFIDEV
         2P9pliba41mUDv4hWCAixZvxyzQW434OgBPgsHIi2wlGW2XAlImzdugK+nG3H7DNzMjv
         nCPQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=o2wUE9ek;
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc;
        bh=tU8s9UNnfm3P3ledIBbbvHodtnaHBz8mCGA55t/T8QY=;
        b=MT7/bClRK3Y+gafvLo83id0uCjRkwSHHJ1ll4INw7Ef31ZDdHLNgBD0DUi6ZC29vPi
         c35GCpLN96UmdNnsr+54J8SQ+OLE3fCVI1GFPOiryeLJOUxLrZauifgUfvUFODNp2wFM
         LSPGcpnNCOHdbmqhj/1/nPCKw66u6/tMdtXSw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc;
        bh=tU8s9UNnfm3P3ledIBbbvHodtnaHBz8mCGA55t/T8QY=;
        b=L6FxLqnV4R8r0S/BIRUm6agUcVzbMCxUPmj2WFtGNqAMPzWUoEV4J/S7fchMPkT9Ir
         cj6HH5hseGTBrvwKjbxtYIalMR+yLDi0A6Wge1hJbrmvvviIvtk7jVTRlkw9JMJ0Mcn8
         0EQsd0Gc8Z1zaSaKkQq7K1HdWK/rgRXx2zGvGjvnt2/DdQwnyw1+TT5KlI8gJNfu3hnH
         x46XHourv8p+hNYcJAMCYG1x0EdimziFfY21SaJUPBPcq1Gbwd8Go/MvEE68FuxwmmNW
         NpzbOF7MJZvIRO322VB7d1lQaKhfSPPcPr0jOMmfy3nl1XKx3cHfLD22Tz7WFHXHeVtd
         doFw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3Ce/cXWgMuUPTDuNI6dJ8Or81e4f5gzwWGir6OO3UsxO2xf3iO
	QoEUOspefP9kdMiha29WxYfjpQ==
X-Google-Smtp-Source: AA6agR5n9MOdbtidSsOqYdslh3tE0pC0GFBCkEiUOvicksMVbY9EBpM9fCTsP3SA1vjRctVfx9ZQ5w==
X-Received: by 2002:a05:6130:10b:b0:37f:a52:99fd with SMTP id h11-20020a056130010b00b0037f0a5299fdmr4312026uag.96.1661836784510;
        Mon, 29 Aug 2022 22:19:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1f:1801:0:b0:394:8306:aca5 with SMTP id 1-20020a1f1801000000b003948306aca5ls264391vky.8.-pod-prod-gmail;
 Mon, 29 Aug 2022 22:19:43 -0700 (PDT)
X-Received: by 2002:a1f:2582:0:b0:394:617d:a628 with SMTP id l124-20020a1f2582000000b00394617da628mr2550994vkl.18.1661836783735;
        Mon, 29 Aug 2022 22:19:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661836783; cv=none;
        d=google.com; s=arc-20160816;
        b=hKAvHbDPXgT9R6NwcZTXk1k+nI8u/0Xzj2lfhg4BaxgiPNsDEo/Om6rDLm8Nf0zwPq
         44TRovVsC5i5Z2ttqiLhmPKNg2Af/TBkkQF04hzJGsGoplWjOkeXbKZjzgl736EQGdaY
         mRj2lQMhp9IRP0W33SPo/Z+biO2mbyfK+T9z5di+L6wyT8XZ5WeX8uR+c1XDIdpNtj2l
         4sUWW2+Dr37CUXhgZYVJMhF2CVqvWPOX6slF7VnQtNZ6mY2YetRIiVWeSTXO5cnpWqpX
         NRVjEw3wLlpRapKTtLn24uhlMIx6OGf+/kdmRiSkmvI2Kb05/GqKCiyIvwIMJKVe/Ks6
         RH/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Ex1V09Wi72YItuxQSFO/x/RN+VipyZo4UEEeS9+NADY=;
        b=Ns3jjPAsg4CUScm1eoGCktmVsJlADd+W+xiXOc4qJIGA4jFIQ3CCt0c7TYWMB1/i7c
         v/7PYxAhAbXYT/FMXcG5cLKV+NxgYk5MZaU2D50VMZbaFziMaKs6Yj8DxB8oZn/ZQoPy
         EHVgCs1kSjdJXlzZc4vytCuOU+W5GGe6n8JzaeN6aGIeVzT3fC7OkChD8gdmvembQ5wb
         Etw3du2p16avN0vAv6ytanKBU37GQ6GXIUyDBIDkHLVFi5bdziTCd0neHUrBP5v6uTmk
         f1jC3VSby1D3UqiGBEVxFkI9yenFK03R0J2AHv+E+uP6fJRVmSR34SGb9nHTQdWS2ulz
         ooYQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=o2wUE9ek;
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a16-20020a05610222d000b0038ad4743040sor2289611vsh.98.2022.08.29.22.19.43
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 29 Aug 2022 22:19:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a67:e182:0:b0:390:f2b5:6126 with SMTP id
 e2-20020a67e182000000b00390f2b56126mr1418472vsl.62.1661836783400; Mon, 29 Aug
 2022 22:19:43 -0700 (PDT)
MIME-Version: 1.0
From: Hu Xiaoying <huxiaoying2008@gmail.com>
Date: Tue, 30 Aug 2022 13:19:32 +0800
Message-ID: <CABd4UjZmn+J86BtSrRY42s57fpO+F5LBQL0neLpczzWKJ_Srxg@mail.gmail.com>
Subject: [usb-storage] [PATCH v3] usb: Improves USB2.0 write performance
To: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org, 
	gregkh@linuxfoundation.org, stern@rowland.harvard.edu
Content-Type: multipart/alternative; boundary="000000000000263e1d05e76e87bc"
X-Original-Sender: huxiaoying2008@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=o2wUE9ek;       spf=pass
 (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
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

--000000000000263e1d05e76e87bc
Content-Type: text/plain; charset="UTF-8"

USB external storage device(0x0b05:1932), use gnome-disk-utility tools
to test usb write speed < 30MB/s. if does not to load module of uas for
this device
, can increase the write speed from 20MB/s to >40MB/s.

Signed-off-by: Hu Xiaoying <huxiaoying@gmail.com>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h
b/drivers/usb/storage/unusual_uas.h
index 4051c8cd0cd8..3925c7c67915 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -62,6 +62,13 @@ UNUSUAL_DEV(0x0984, 0x0301, 0x0128, 0x0128,
                USB_SC_DEVICE, USB_PR_DEVICE, NULL,
                US_FL_IGNORE_UAS),

+/* Reported-by: Tom Hu <huxiaoying@gmail.com> */
+UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
+               "ASUS",
+               "External HDD",
+               USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+               US_FL_IGNORE_UAS),
+
 /* Reported-by: David Webb <djw@noc.ac.uk> */
 UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
                "Seagate",
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABd4UjZmn%2BJ86BtSrRY42s57fpO%2BF5LBQL0neLpczzWKJ_Srxg%40mail.gmail.com.

--000000000000263e1d05e76e87bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">USB external storage device(0x0b05:1932), use gnome-disk-u=
tility tools<br>to test usb write speed &lt; 30MB/s. if does not to load mo=
dule of uas for this device<br>, can increase the write speed from 20MB/s t=
o &gt;40MB/s.<br><br>Signed-off-by: Hu Xiaoying &lt;<a href=3D"mailto:huxia=
oying@gmail.com">huxiaoying@gmail.com</a>&gt;<br>---<br>=C2=A0drivers/usb/s=
torage/unusual_uas.h | 7 +++++++<br>=C2=A01 file changed, 7 insertions(+)<b=
r><br>diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/=
unusual_uas.h<br>index 4051c8cd0cd8..3925c7c67915 100644<br>--- a/drivers/u=
sb/storage/unusual_uas.h<br>+++ b/drivers/usb/storage/unusual_uas.h<br>@@ -=
62,6 +62,13 @@ UNUSUAL_DEV(0x0984, 0x0301, 0x0128, 0x0128,<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 USB_SC_DEVICE, USB_PR_DEVICE, NU=
LL,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 US_FL_IGNORE=
_UAS),<br><br>+/* Reported-by: Tom Hu &lt;<a href=3D"mailto:huxiaoying@gmai=
l.com">huxiaoying@gmail.com</a>&gt; */<br>+UNUSUAL_DEV(0x0b05, 0x1932, 0x00=
00, 0x9999,<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;ASU=
S&quot;,<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Extern=
al HDD&quot;,<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 USB_SC_=
DEVICE, USB_PR_DEVICE, NULL,<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 US_FL_IGNORE_UAS),<br>+<br>=C2=A0/* Reported-by: David Webb &lt;<a =
href=3D"mailto:djw@noc.ac.uk">djw@noc.ac.uk</a>&gt; */<br>=C2=A0UNUSUAL_DEV=
(0x0bc2, 0x331a, 0x0000, 0x9999,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &quot;Seagate&quot;,<br>-- <br>2.25.1<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABd4UjZmn%2BJ86BtSrRY42s=
57fpO%2BF5LBQL0neLpczzWKJ_Srxg%40mail.gmail.com?utm_medium=3Demail&utm_sour=
ce=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/u=
sb-storage/CABd4UjZmn%2BJ86BtSrRY42s57fpO%2BF5LBQL0neLpczzWKJ_Srxg%40mail.g=
mail.com</a>.<br />

--000000000000263e1d05e76e87bc--
