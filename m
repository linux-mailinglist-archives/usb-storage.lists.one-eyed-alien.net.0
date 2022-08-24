Return-Path: <usb-storage+bncBC72LGEK34ERBWPGS6MAMGQE6F2VMBI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa45.google.com (mail-vk1-xa45.google.com [IPv6:2607:f8b0:4864:20::a45])
	by mail.lfdr.de (Postfix) with ESMTPS id 340AB59F6B0
	for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 11:46:03 +0200 (CEST)
Received: by mail-vk1-xa45.google.com with SMTP id e1-20020a1f1e01000000b00378fe7fdde9sf2644460vke.21
        for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 02:46:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661334362; cv=pass;
        d=google.com; s=arc-20160816;
        b=PN0kW/qmD0QHueQphhAnYgZTqrRXnp6Qt1rd4nnXKhfbBrMa4gqK26zrztIOj2KMQT
         porb/K8ATnTDG2wTwhMJOYFASHFbU29nig3nP24k4GtsGkWiHisTd8jFBhrL5kMXRwz+
         HOvf598C6YcQegbGGSWHnuZJMuXsFjBcamDLVoZKLTadT0tEsTWYNY5tWodMhHBRomVf
         cDYJZthBTnAdNQB0V02iiIqMQxOWmqcjvk6aEd/vYVKL2cYTkddsqsuuEhBcecZTGPnw
         5wXyTb/bieCYpdU6XjkTYVhHOdA/aysR3UB2weBO0M4Jlofo6JO4DwOMk/frjnCe3Evt
         9tkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nP/HihMKDV9xCQbby4IQLc1VfL1DzSuVplHXPtayqlo=;
        b=W8g2uhWT5Kj386ufpRkdMi5Fz4LmjDEbhKNekbza3BgXGo1qPkN5PdfRw5c0iXD3ER
         mHNS2TXp/6/vrz/vObyG/tPYuvjubTTkV909WemEQy4e933UyQ2DnjqA7NVtt2Dh/z7e
         RwAK4QsQ1KPIbevJe4h7VuEXkl6rJNSE2o+BgeThGUug2LNwfZdmrBbCRGD+62r7/KZr
         TE/VN4BLlEjqDnKc8R/JnNfIwtrmVBv1sl7wcARpNRSTJ6d3TFzDaDTkBImOesjFl8w9
         VpFCzZ5Nc0cqXHd3weyYGhHc3Rz30svMYNt6YCkemArnWAT+VyBxWT1AWmCUFZb5VsMT
         iQ2g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=AmLDmViy;
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc;
        bh=nP/HihMKDV9xCQbby4IQLc1VfL1DzSuVplHXPtayqlo=;
        b=TPQ/ARJYSAom/FeT7YUNBXieYecarBzN1614L9TzgnmfgE8+enVvWc6rMem66XVAS7
         nzYKtpLmxBgrn00DQ+xnEmSbuoDpAUc0V1sM4z+CntpFlGmrHA47ayzOaA7HntuGVb2z
         22zBpVMwfJB0mgVYs3fyf+FQYHhIMyYVAuPdM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc;
        bh=nP/HihMKDV9xCQbby4IQLc1VfL1DzSuVplHXPtayqlo=;
        b=HhNNFlgg30FlJ7fduqVbGcgWJVzP8XPEXsB9vYPOvsBAHD8K2fooUNe4bA33OQMpLY
         agDnUfmHORcGXUhG79QelXMNgSL5OutvhFkntUVSdeODTYx/mDYBTBoUbMOp0vTc42h5
         fE55LFst9qynjjP7bPvWDWi28C0XAfUuQqUNpvWd0nZR9i3nbb8D2l96RoTEZa7RtB5E
         CqAjSt93zhhEnBKeJC6pzTE8TfS26S/0XYDPveYFnlhByEtDl+a6rW547gCBcRetJtPW
         kLZ4CTOxm/HrNEHNodfYbxn4RSHUgWuYYjIHsHO53R/wjQfU19n9XKInhm3Z7kB5mlGC
         dzpQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1zd6u/oXzI+6uPqjBwsG1E5zYAWU2cHJ0g71IexY3COQmrTv4r
	4bbuGafJVS2wSiqp4C0T+z9jIA==
X-Google-Smtp-Source: AA6agR7rq2ItSV6YvVgSQ/TxKEy0r6MVdtAFuhTGRN9Vf48UsoDisCzgoWt3szHYe8ZknHg9/lnrtw==
X-Received: by 2002:a05:6102:2243:b0:390:2dbd:a73c with SMTP id e3-20020a056102224300b003902dbda73cmr9348032vsb.22.1661334361812;
        Wed, 24 Aug 2022 02:46:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a67:dd06:0:b0:357:7d08:67a4 with SMTP id y6-20020a67dd06000000b003577d0867a4ls3497451vsj.10.-pod-prod-gmail;
 Wed, 24 Aug 2022 02:46:01 -0700 (PDT)
X-Received: by 2002:a67:c484:0:b0:390:2264:d941 with SMTP id d4-20020a67c484000000b003902264d941mr9258436vsk.27.1661334360997;
        Wed, 24 Aug 2022 02:46:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661334360; cv=none;
        d=google.com; s=arc-20160816;
        b=cwrZHxpm51gJlQxJL7Cgo4xhZwSMXogmqEMW0gVw+FPkHiAKRFu4WfXS0qjc6MExOv
         UHPGaObQK2bnsO88lM5dIq5KOGjBE4prgCZiC3TmNBQ/1RX1hOk0lA4FsiBPmLjWUGyX
         wjH/Qu6X3j4QUXOlPQlAnK3yHz+HlPsf6YAlgKNqqQJEkXlOOZQoM7t1wDgvq5YgnalY
         xEDkvM1UrvyTPdEU986mNSyizaaLvn59f10NqN/hUrzmd9sHF9w2qWE5OwExdOFgriwZ
         af7hdtA1KGW9s+Yz5s5nISyvpF9l3uqIXn+69VmtmL5CsCEP/V064Hde5CFtk2aGa7Ju
         eB9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=8Y0z2qsK9H2cfaEHBkvHqIHFed4zLwseyRvQeI1qcbU=;
        b=EuMRgkp/YhyRyYSpV73L8L6QH9szCWZu9R0ZYrxnAeryW8AYoF7GmwK39KtY1KqOyZ
         F91nacdP6skqrNsyRUUREpotfQRLgfbdQU5UNiwRTEABA84XmMga6w8uZ+OcW8IQu/Nv
         Wwh/l8KUOdn2ieJ8GwQJ65a6bZm48BgutsHaH/jrIoolwoMTHC9bDvEoBGBcvU0v1RPk
         O98G04mbR3CXwT0+1k7QiKYe3DtSJkf2lwcVKM0ZMuv3wFOn9if2ntNrDVhI97GUswsY
         1XH9S5OrWLsECqtyAwc8AKpyFUvXwLTWEhklQlXBq2lPuvgehsuE9qzt7L97RPC/9mVP
         6Hcw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=AmLDmViy;
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id r7-20020ab07407000000b003827403931asor4135528uap.21.2022.08.24.02.46.00
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 24 Aug 2022 02:46:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:ab0:2397:0:b0:39e:e69b:9744 with SMTP id
 b23-20020ab02397000000b0039ee69b9744mr6869653uan.111.1661334360661; Wed, 24
 Aug 2022 02:46:00 -0700 (PDT)
MIME-Version: 1.0
References: <S240916AbiHWHMh/20220823071237Z+20120@vger.kernel.org>
 <CABd4Uja9SoHpiMr2gDFcEP2Cudp7dcWJ_2i+KTEse9CU=KMtzw@mail.gmail.com> <CABd4UjYB=nzha=eoogNJU4pFwW9+4PQ65bC5u=R-gCE_ZLSQXw@mail.gmail.com>
In-Reply-To: <CABd4UjYB=nzha=eoogNJU4pFwW9+4PQ65bC5u=R-gCE_ZLSQXw@mail.gmail.com>
From: Hu Xiaoying <huxiaoying2008@gmail.com>
Date: Wed, 24 Aug 2022 17:45:49 +0800
Message-ID: <CABd4UjaBog_VVcYjc2YDTq3Q-cfSWVzVbRbffJr8i_YE8dh-nQ@mail.gmail.com>
Subject: [usb-storage] Re: Confirmation for subscribe linux-usb
To: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org, 
	gregkh@linuxfoundation.org, stern@rowland.harvard.edu
Content-Type: multipart/mixed; boundary="0000000000006bbacd05e6f98c77"
X-Original-Sender: huxiaoying2008@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=AmLDmViy;       spf=pass
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

--0000000000006bbacd05e6f98c77
Content-Type: multipart/alternative; boundary="0000000000006bbacb05e6f98c75"

--0000000000006bbacb05e6f98c75
Content-Type: text/plain; charset="UTF-8"

From 040e7ed7e6e9ed850575ed075e02d960a5ffe191 Mon Sep 17 00:00:00 2001
From: Hu Xiaoying <huxiaoying@kylinos.cn>
Date: Wed, 22 Jun 2022 16:35:59 +0800
Subject: [PATCH -next] KYLIN: usb: Improves USB2.0 write performance for
 External HDD device (VID:PID = 0x0b05:0x1932)

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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABd4UjaBog_VVcYjc2YDTq3Q-cfSWVzVbRbffJr8i_YE8dh-nQ%40mail.gmail.com.

--0000000000006bbacb05e6f98c75
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">From 040e7ed7e6e9ed850575ed075e02d960a5ffe191 Mon Sep 17 0=
0:00:00 2001<br>From: Hu Xiaoying &lt;<a href=3D"mailto:huxiaoying@kylinos.=
cn">huxiaoying@kylinos.cn</a>&gt;<br>Date: Wed, 22 Jun 2022 16:35:59 +0800<=
br>Subject: [PATCH -next] KYLIN: usb: Improves USB2.0 write performance for=
<br>=C2=A0External HDD device (VID:PID =3D 0x0b05:0x1932)<br><br>CVE: NA<br=
><br>USB external storage device(0x0b05:1932), use gnome-disk-utility tools=
<br>to test usb write =C2=A0&lt; 30MB/s.<br>then, igoned to load module of =
uas for this device.<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>Write speed: Improves form 27MB/s to 40MB/s+<br><br>Cc: =
<a href=3D"mailto:stable@vger.kernel.org">stable@vger.kernel.org</a><br>Sig=
ned-off-by: Hu Xiaoying &lt;<a href=3D"mailto:huxiaoying2008@gmail.cn">huxi=
aoying2008@gmail.cn</a>&gt;<br>---<br>=C2=A0drivers/usb/storage/unusual_uas=
.h | 7 +++++++<br>=C2=A01 file changed, 7 insertions(+)<br><br>diff --git a=
/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h<br>i=
ndex 4051c8cd0cd8..abaf4ea8138b 100644<br>--- a/drivers/usb/storage/unusual=
_uas.h<br>+++ b/drivers/usb/storage/unusual_uas.h<br>@@ -157,3 +157,10 @@ U=
NUSUAL_DEV(0x4971, 0x8024, 0x0000, 0x9999,<br>=C2=A0		&quot;External HDD&qu=
ot;,<br>=C2=A0		USB_SC_DEVICE, USB_PR_DEVICE, NULL,<br>=C2=A0		US_FL_ALWAYS=
_SYNC),<br>+<br>+/* Reported-by: Tom Hu &lt;<a href=3D"mailto:huxiaoying@ky=
linos.cn">huxiaoying@kylinos.cn</a>&gt; */<br>+UNUSUAL_DEV(0x0b05, 0x1932, =
0x0000, 0x9999,<br>+		&quot;ASUS&quot;,<br>+		&quot;External HDD&quot;,<br>=
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,<br>+		US_FL_IGNORE_UAS),<br>-- <br>2=
.25.1<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABd4UjaBog_VVcYjc2YDTq3Q=
-cfSWVzVbRbffJr8i_YE8dh-nQ%40mail.gmail.com?utm_medium=3Demail&utm_source=
=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb=
-storage/CABd4UjaBog_VVcYjc2YDTq3Q-cfSWVzVbRbffJr8i_YE8dh-nQ%40mail.gmail.c=
om</a>.<br />

--0000000000006bbacb05e6f98c75--
--0000000000006bbacd05e6f98c77
Content-Type: application/x-patch; 
	name="0001-KYLIN-usb-Improves-USB2.0-write-performance-for-Exte.patch"
Content-Disposition: attachment; 
	filename="0001-KYLIN-usb-Improves-USB2.0-write-performance-for-Exte.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_l779p3nn0>
X-Attachment-Id: f_l779p3nn0

RnJvbSAwNDBlN2VkN2U2ZTllZDg1MDU3NWVkMDc1ZTAyZDk2MGE1ZmZlMTkxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBIdSBYaWFveWluZyA8aHV4aWFveWluZ0BreWxpbm9zLmNuPgpE
YXRlOiBXZWQsIDIyIEp1biAyMDIyIDE2OjM1OjU5ICswODAwClN1YmplY3Q6IFtQQVRDSCAtbmV4
dF0gS1lMSU46IHVzYjogSW1wcm92ZXMgVVNCMi4wIHdyaXRlIHBlcmZvcm1hbmNlIGZvcgogRXh0
ZXJuYWwgSEREIGRldmljZSAoVklEOlBJRCA9IDB4MGIwNToweDE5MzIpCgpDVkU6IE5BCgpVU0Ig
ZXh0ZXJuYWwgc3RvcmFnZSBkZXZpY2UoMHgwYjA1OjE5MzIpLCB1c2UgZ25vbWUtZGlzay11dGls
aXR5IHRvb2xzCnRvIHRlc3QgdXNiIHdyaXRlICA8IDMwTUIvcy4KdGhlbiwgaWdvbmVkIHRvIGxv
YWQgbW9kdWxlIG9mIHVhcyBmb3IgdGhpcyBkZXZpY2UuCj09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09CldyaXRlIHNwZWVkOiBJbXByb3ZlcyBmb3JtIDI3TUIv
cyB0byA0ME1CL3MrCgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBI
dSBYaWFveWluZyA8aHV4aWFveWluZzIwMDhAZ21haWwuY24+Ci0tLQogZHJpdmVycy91c2Ivc3Rv
cmFnZS91bnVzdWFsX3Vhcy5oIHwgNyArKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2Ivc3RvcmFnZS91bnVzdWFsX3Vhcy5oIGIv
ZHJpdmVycy91c2Ivc3RvcmFnZS91bnVzdWFsX3Vhcy5oCmluZGV4IDQwNTFjOGNkMGNkOC4uYWJh
ZjRlYTgxMzhiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3VzYi9zdG9yYWdlL3VudXN1YWxfdWFzLmgK
KysrIGIvZHJpdmVycy91c2Ivc3RvcmFnZS91bnVzdWFsX3Vhcy5oCkBAIC0xNTcsMyArMTU3LDEw
IEBAIFVOVVNVQUxfREVWKDB4NDk3MSwgMHg4MDI0LCAweDAwMDAsIDB4OTk5OSwKIAkJIkV4dGVy
bmFsIEhERCIsCiAJCVVTQl9TQ19ERVZJQ0UsIFVTQl9QUl9ERVZJQ0UsIE5VTEwsCiAJCVVTX0ZM
X0FMV0FZU19TWU5DKSwKKworLyogUmVwb3J0ZWQtYnk6IFRvbSBIdSA8aHV4aWFveWluZ0BreWxp
bm9zLmNuPiAqLworVU5VU1VBTF9ERVYoMHgwYjA1LCAweDE5MzIsIDB4MDAwMCwgMHg5OTk5LAor
CQkiQVNVUyIsCisJCSJFeHRlcm5hbCBIREQiLAorCQlVU0JfU0NfREVWSUNFLCBVU0JfUFJfREVW
SUNFLCBOVUxMLAorCQlVU19GTF9JR05PUkVfVUFTKSwKLS0gCjIuMjUuMQoK
--0000000000006bbacd05e6f98c77--
