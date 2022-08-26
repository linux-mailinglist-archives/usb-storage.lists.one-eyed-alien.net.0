Return-Path: <usb-storage+bncBC72LGEK34ERBGV2UCMAMGQEASN7GSQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ua1-x948.google.com (mail-ua1-x948.google.com [IPv6:2607:f8b0:4864:20::948])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9625A1DF4
	for <lists+usb-storage@lfdr.de>; Fri, 26 Aug 2022 03:08:43 +0200 (CEST)
Received: by mail-ua1-x948.google.com with SMTP id p4-20020a9f2b04000000b0039f2ed5774asf70758uaj.10
        for <lists+usb-storage@lfdr.de>; Thu, 25 Aug 2022 18:08:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661476122; cv=pass;
        d=google.com; s=arc-20160816;
        b=REqG5u0H6CpJLCUTxUpnUSuyk1d8GCkng47xfe1ByO3cnfz+JDSFeG8xMxwPggaYus
         j4YB/aodA252CaSO7Eo/Z5LDY+y3Ts9vrap2x3Ks/5dWjL2CmENl8FXjmSbXzHyChYLJ
         2OZELqIrcNyyjEU+hiNn+bE/kUslaL4DuVVX3/nTs1cuapwAogh2ATakF1RWRbDpAylH
         VS8WVPBXByJRQU9ME4QCcEgcv3IltUTprTh5QpxK+Q6oM6b6LCImU0XclzbLa4uMdU97
         6VuwlpVlOko/thEpXCyuySyHHj2fGt/76iQRIWiycG2HSx+hrqWW5vj1kfmj/oClI/55
         a/pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=wxNby+VqaIqr1Qk4Yonl7Qt6DSkhCtloyWO83de7Hjc=;
        b=tenFQTenUYjG14Brp0N3Dn8kcfZCVmcGHa0P7pt1Dq6Fg6avB4vDJjlZrk5LJYjJ+4
         uUVnUxM/+a6ux1OAdvdG3eOE4Qd0rTGzWu3NvSkVltihBWDUFOK5nmU3MflBlfHbgDwl
         CQI4dgwju//vKNhyTx4jl4+/XpZyeaJ7reSHwnZo3w47rCHhrEnF8t3U5IbJEUMnSVzz
         G5ONi2zNoWYZCGY3ylk+FzAo2zEQ99Xvzj9zd/MUFwA/jkqV37dA9NNJ/5SnP0XeF6KY
         yfk18M3i0Izfm3rzUpIn5jgUMCR5RCHtnoMttumzhPUOPByp645U9FEEEwfVOKLvQzsH
         SXzg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lu46m2NU;
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc;
        bh=wxNby+VqaIqr1Qk4Yonl7Qt6DSkhCtloyWO83de7Hjc=;
        b=Cmig79ckEi96aG8LED5BaPB2SxmAWnngqPinGQTAbizTyhBdrkPTN2Tw02gzkZtWgl
         sCwF04c+CmnUPHwaPC8RkgOOsU6O/YvuLwoKO3V4QauVWZ4eOAnzYZytLL1hDGLyP+VG
         qBocOXPIqNxzzVxSRzHjVjx5xJOtWSDQvG1gE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc;
        bh=wxNby+VqaIqr1Qk4Yonl7Qt6DSkhCtloyWO83de7Hjc=;
        b=c5drLGQliYUcBqC/FivpkpwnfWHMdygDlHNzWyTf1jl/DUTTCezWec22LMH25j3MVD
         JeN/Fe91nhFH01VlrMA60a3SZI/q4KlMrQxDOiAbXXA/ai1qFeRIZuo7cRvNI2RDkev8
         30GmMmrVrJLMtsgmb5/AYD0efX1+vxRCHMGwAXvozSQeppqie9NVBRwHvHBIR5oxX3Ih
         2DgjZhI9y2klIUoD4aFEEHWrbxVPwheQgPatsR0oqXfYPt9w/hxctl2Blt7VzEcFPK24
         cqZKE8IepzsaQg8bY7skbqAv3kN5l1LCbeW+a8dROypUf0bVtboGjaRsAJx4T9OsqwTi
         B9aA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3G3NoURLFnpoq4/RfZEdHdHuoRQWn9SG8lqPidxxT8A3edQOt2
	AHjoNezchAHi2Cjb01UHma5w/Q==
X-Google-Smtp-Source: AA6agR7MN9dcmC+CgDJv0efrXgTghfNcqXmQEydw/STR60Xz+apV42dF01qvLVW/JoyjUFwLq70AYA==
X-Received: by 2002:ab0:3749:0:b0:39f:65fe:12d4 with SMTP id i9-20020ab03749000000b0039f65fe12d4mr327770uat.32.1661476122336;
        Thu, 25 Aug 2022 18:08:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a67:e082:0:b0:38c:e94f:3b4e with SMTP id f2-20020a67e082000000b0038ce94f3b4els603522vsl.5.-pod-prod-gmail;
 Thu, 25 Aug 2022 18:08:41 -0700 (PDT)
X-Received: by 2002:a67:f30a:0:b0:390:62de:bb6f with SMTP id p10-20020a67f30a000000b0039062debb6fmr2555561vsf.42.1661476121525;
        Thu, 25 Aug 2022 18:08:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661476121; cv=none;
        d=google.com; s=arc-20160816;
        b=jIrzeLcyuvGnB3OwCXAxfjk9OURjNRnxa+UMm/HNbQVKRk40KoHMSO7T0vQIWeDn0f
         Q/VugVybhABk9KnM1yoHxeIzA+VR3pJ8/7EIN3eRH6rj1h3o3U/VyZGhefLfOyrO3U+T
         vWNJ1vn+rxDXPy7t0N7p0u1Bszli6S1omzlNNsgSWOxKL+qkfZiqlzR4sZKqLT3EYjYJ
         wJAoGQeMvqGggdTJmjR6/5ZeYA5G6rE8SbahdPLOtpoKhob9uoU2Ga1oDF+E4zfgfWX7
         LaJBV0lBPi51tTx8OgLj7p3T/OZ0Xor4OAmm1AutAP1ITFrKX/X2H1a0JnetNr2juBJt
         Ktww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=l+hg1YoQsb0OOkJmcZ41ukMygkGexewSjwpmylR4ZE8=;
        b=M9+N+KcKJL+tBrgC8Sh9wWQTGHyaHzP2aidoK2y83fuzFh36khQVCU+kC9KQobFQXI
         2i9cHyFO/vgTrxFllCS0P9QrzsL1cYgi6ZjLGlt3koRPAs74KPu2sWxsjjLpKd/cGDce
         3LGkkSr1uAm2dm7DX7HhFWGCdOHYtGlof8Y8c06rBIkdsLKd1E+UsjveVaki/uHtwgnF
         VCvm3basKmDgklfZwpwil/SJPy6sIATGbn0uPoWfdKo2u/7p4fC0POFTwaR/+zIM7c57
         N9MhOobRkZJz31DV2PBZfJddCieuMWYyRSnbc4bIWFWcZNNyXaHNcHFXGPOqjT6A9RMv
         o0+g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lu46m2NU;
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z24-20020ab05e18000000b0039f50e38f53sor217703uag.20.2022.08.25.18.08.41
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 25 Aug 2022 18:08:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:ab0:6993:0:b0:39f:59df:19ad with SMTP id
 t19-20020ab06993000000b0039f59df19admr2055712uaq.30.1661476121323; Thu, 25
 Aug 2022 18:08:41 -0700 (PDT)
MIME-Version: 1.0
From: Hu Xiaoying <huxiaoying2008@gmail.com>
Date: Fri, 26 Aug 2022 09:08:30 +0800
Message-ID: <CABd4Ujb_+K7YQSJ6vwGhKoCzaZR7R7mLi+fmfYFE9Hrxk9kWEA@mail.gmail.com>
Subject: [usb-storage] [PATCH] usb: storage: Improves USB2.0 write performance
 for External usb device (VID:PID = 0x0b05:0x1932)
To: stern@rowland.harvard.edu, gregkh@linuxfoundation.org, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Content-Type: multipart/alternative; boundary="00000000000003ab1505e71a8e8a"
X-Original-Sender: huxiaoying2008@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=lu46m2NU;       spf=pass
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

--00000000000003ab1505e71a8e8a
Content-Type: text/plain; charset="UTF-8"

Subject: [PATCH -next] usb: Improves USB2.0 write performance for
 External usb device (VID:PID = 0x0b05:0x1932)

CVE: NA

USB external storage device(0x0b05:1932), use gnome-disk-utility tools
to test usb write  < 30MB/s.
then, igoned to load module of uas for this device.
===============================================
Write speed: Improves form 27MB/s to 40MB/s+

Cc: stable@vger.kernel.org
Signed-off-by: Hu Xiaoying <huxiaoying2008@gmail.cn>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h
b/drivers/usb/storage/unusual_uas.h
index 4051c8cd0cd8..abaf4ea8138b 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -157,3 +157,10 @@ UNUSUAL_DEV(0x4971, 0x8024, 0x0000, 0x9999,
  "External HDD",
  USB_SC_DEVICE, USB_PR_DEVICE, NULL,
  US_FL_ALWAYS_SYNC),
+
+/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
+UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
+ "ASUS",
+ "External HDD",
+ USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+ US_FL_IGNORE_UAS),
--

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABd4Ujb_%2BK7YQSJ6vwGhKoCzaZR7R7mLi%2BfmfYFE9Hrxk9kWEA%40mail.gmail.com.

--00000000000003ab1505e71a8e8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Subject: [PATCH -next] usb: Improves USB2.0 write performa=
nce for<br>=C2=A0External usb device (VID:PID =3D 0x0b05:0x1932)<br><br>CVE=
: NA<br><br>USB external storage device(0x0b05:1932), use gnome-disk-utilit=
y tools<br>to test usb write =C2=A0&lt; 30MB/s.<br>then, igoned to load mod=
ule of uas for this device.<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>Write speed: Improves form 27MB/s to 40MB/s+<br=
><br>Cc:=C2=A0<a href=3D"mailto:stable@vger.kernel.org" target=3D"_blank">s=
table@vger.kernel.org</a><br>Signed-off-by: Hu Xiaoying &lt;<a href=3D"mail=
to:huxiaoying2008@gmail.cn" target=3D"_blank">huxiaoying2008@gmail.cn</a>&g=
t;<br>---<br>=C2=A0drivers/usb/storage/unusual_uas.h | 7 +++++++<br>=C2=A01=
 file changed, 7 insertions(+)<br><br>diff --git a/drivers/usb/storage/unus=
ual_uas.h b/drivers/usb/storage/unusual_uas.h<br>index 4051c8cd0cd8..abaf4e=
a8138b 100644<br>--- a/drivers/usb/storage/unusual_uas.h<br>+++ b/drivers/u=
sb/storage/unusual_uas.h<br>@@ -157,3 +157,10 @@ UNUSUAL_DEV(0x4971, 0x8024=
, 0x0000, 0x9999,<br>=C2=A0 &quot;External HDD&quot;,<br>=C2=A0 USB_SC_DEVI=
CE, USB_PR_DEVICE, NULL,<br>=C2=A0 US_FL_ALWAYS_SYNC),<br>+<br>+/* Reported=
-by: Tom Hu &lt;<a href=3D"mailto:huxiaoying@kylinos.cn" target=3D"_blank">=
huxiaoying@kylinos.cn</a>&gt; */<br>+UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x=
9999,<br>+ &quot;ASUS&quot;,<br>+ &quot;External HDD&quot;,<br>+ USB_SC_DEV=
ICE, USB_PR_DEVICE, NULL,<br>+ US_FL_IGNORE_UAS),<font color=3D"#888888"><b=
r>--</font><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABd4Ujb_%2BK7YQSJ6vwGhKo=
CzaZR7R7mLi%2BfmfYFE9Hrxk9kWEA%40mail.gmail.com?utm_medium=3Demail&utm_sour=
ce=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/u=
sb-storage/CABd4Ujb_%2BK7YQSJ6vwGhKoCzaZR7R7mLi%2BfmfYFE9Hrxk9kWEA%40mail.g=
mail.com</a>.<br />

--00000000000003ab1505e71a8e8a--
