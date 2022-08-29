Return-Path: <usb-storage+bncBC72LGEK34ERBYH4WGMAMGQE7PAOMUI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ua1-x946.google.com (mail-ua1-x946.google.com [IPv6:2607:f8b0:4864:20::946])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9E35A457A
	for <lists+usb-storage@lfdr.de>; Mon, 29 Aug 2022 10:52:49 +0200 (CEST)
Received: by mail-ua1-x946.google.com with SMTP id b28-20020ab05f9c000000b0039f5fa6e65fsf2220113uaj.3
        for <lists+usb-storage@lfdr.de>; Mon, 29 Aug 2022 01:52:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661763168; cv=pass;
        d=google.com; s=arc-20160816;
        b=nv9vErAdc1vYy0+QCUCMASAvD87QXOOHOTox+ySbDJTc5nCRdQuW0yWns7tDNAjBHw
         /sTTXuVYPJAR2WKfkg5kr6Xnq1LiYQF5yz97IAWFNZHl4GltstsxazHk122OacxNH6bw
         nCb+S2JeftD8O7njo03y6C6zOgEw1W7sQK3Sa4xH9vmP0B+bevuxGgNVxfh4mWKgbspE
         prpDvOCHjIM+uJdZPclb2vDjDsCldiEP8M0rzBMzm+ntYryQfK4gRxDFm5Snd5bAsw7h
         PRCd0byKn2JWfPxRPs7Zy7rnrYB0F9LB6NvX3lMrPs5SZwAhiT1/oiYIUBzVg4tKDhHQ
         joZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=rJvxArx6qUEo0+YzfBN/vGIwLtsuXmRVVGYzAo39Slg=;
        b=Jyz/U8rknmCuuM1Ehqhjr/jm0Zvf4/zImVMZlDBTa2Diyapw09jYaUt72zH3/KbH7q
         JP2Egcz4pWCR+i5YvOYxxlnj4knuBGmLVrNJ1dYa3kDoSundsbMMwKmQm6b6Bkj0Ahgy
         hdfhSPlya87+zDNsveWFzvVWGvojiiYL5uu541Rhz0UPnLttkd98H1MziJ8uUHjekcDh
         7IoZjyJY7V44R7C0gItLsMfht1BlvvBCtafxK5Y4U+QNdk89Fs+FpkJRL6oIIJ5NFdAr
         0Pj8ADW1ZbJZXNQu058Yo+tcSqoOz6858C5JTxUDig5TE8aTxOLuiPNEXoMWYpMxxka+
         gcbg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="UhoerA/B";
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc;
        bh=rJvxArx6qUEo0+YzfBN/vGIwLtsuXmRVVGYzAo39Slg=;
        b=S/gZhTU+vDxv030evblOCl2KRYgK3nOh5TXAQL8lVOdjx8XUlM+GDDuJBYsn9+pows
         wqXfo+BmuDbIK/B9M0mWYLlWfiqYfdDH8AdNax/N3F0Ko0s59HOy1kpEYPfMXILdJJLE
         JqfkVlHVZyDLYTpOvdAsYyxjG2ZMsgK3qPRNM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc;
        bh=rJvxArx6qUEo0+YzfBN/vGIwLtsuXmRVVGYzAo39Slg=;
        b=eavCZD/iFlJlFtodi+/YyGrUg4OPgm6b4T1RWEtWy3l4Bzu3erw2U2Mr/gsqqtHBMd
         3fg8esdfBBcWdcwvks1gRXKq+xLVaqPeNGz1VfXHdQvBxaYNQThjEi52IkU0LeqMlJTe
         XsuedcxfrdlzlL8ekHgzp+I96tIUcRJEpZRmhdEdZ1EzuCcDfwshoR3oUy1sSBdqM9ba
         7Bz6O1KWvOf+a7onsyb2FeAVN/tqE2dWImX1OFbV0c8AiOJiGx0iLtRc3CjMRrTq/PDE
         n3RVz1PwbBvGOTOBjNfwpij39wieo+GmpqBQ/qPaFICKplww2vpbzpy8v4WMt5pm1Rv8
         zcPQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo08CWhwU0nl3fqlhvJL4/cVh7t8N1bVar4HdMCO0J0vfj2AblwF
	CmoSnSNkRzXfFCKiqRybQFQ7/w==
X-Google-Smtp-Source: AA6agR7LheYiMDl781s1GSBNViiYnjIMkCSJSZwro9k7/2ZCncJESnnMUp5+c8a3aICYUQ3EtmWyOg==
X-Received: by 2002:a67:d315:0:b0:390:e083:8f6d with SMTP id a21-20020a67d315000000b00390e0838f6dmr903833vsj.55.1661763168435;
        Mon, 29 Aug 2022 01:52:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6102:238d:b0:390:7ede:5884 with SMTP id
 v13-20020a056102238d00b003907ede5884ls812335vsr.2.-pod-prod-gmail; Mon, 29
 Aug 2022 01:52:47 -0700 (PDT)
X-Received: by 2002:a05:6102:440c:b0:38e:cec3:a514 with SMTP id df12-20020a056102440c00b0038ecec3a514mr3074972vsb.74.1661763167628;
        Mon, 29 Aug 2022 01:52:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661763167; cv=none;
        d=google.com; s=arc-20160816;
        b=Rnyeylf0KxMuPW/heSROy8CG1XkJ6ZblaAVc0Q7m/koa0ppDxFtETZLu25BWcsWfPp
         CI3xFReP2cn+J+TxISzrnv8JIqWaqtyQXiI0hJTcBCtPDI1dOL+0WcpUSfWVAE0ZIdnn
         NDTSSqiGyQ9C4HLPQrjz0mdLmtLhNq/eeEx3dlsoyxkmK2cAq1hU2zCVxOMuhQ9nTFL2
         nYLCPNatJx0QHahW3vFMdtWG6GqMD2XRfImfwdg2ST1kE29dJAcas/haRhjmIofOx52O
         X6qIL8PkPPbvYtjCFTNnPvRAtaQsom44ju1TEbFMwmbGAhv6Is6z8etAsnrmn8oN6Com
         UaRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=v5YdDr1SV/s31U3Mw4Miskv5ogn7qqfvq0aaHXZgsR8=;
        b=k/jCxIYq4ujjradlOyFT7NSenceRqb53vahVCBlIIcsaYPPBbzie0CvXfxvrLfylml
         MGYNn9Kn5Vi0lvGvEnM7jSrFrfq8Qh5MT1WLaMjoNwYaQvm32iQd70gjnh0Wm85sfLL/
         YjrRHETr3HT5+RyzVOc360dwwc9XB9JHuSl28B2IuV5O0sDrIxuHdIhMO1LSbu6MXEEX
         s866PgCECnwtP2KyefoCEb7cdRygQ3A04lQ2WA43BbQAH5ocoBwxYPe2wfFImHiotiRW
         4ycZrmCwZ7thVm7kEjY+YUmO8Zii+0dYPBEgDsPAhSPvbALDE4vCqQw5jUP9ILTOuxBq
         CsWA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="UhoerA/B";
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id m133-20020a1f268b000000b00393857910a2sor1097884vkm.3.2022.08.29.01.52.47
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 29 Aug 2022 01:52:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a1f:2d4e:0:b0:394:6cf0:c4b7 with SMTP id
 t75-20020a1f2d4e000000b003946cf0c4b7mr769993vkt.27.1661763167311; Mon, 29 Aug
 2022 01:52:47 -0700 (PDT)
MIME-Version: 1.0
From: Hu Xiaoying <huxiaoying2008@gmail.com>
Date: Mon, 29 Aug 2022 16:52:36 +0800
Message-ID: <CABd4UjYSaZv6H9Q-UbM8QQZk8HcBPrJ7=DfDQGxJNVNot68Kfg@mail.gmail.com>
Subject: [usb-storage] [PATCH v2] usb: Improves USB2.0 write performance
To: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org, 
	gregkh@linuxfoundation.org, stern@rowland.harvard.edu
Content-Type: multipart/alternative; boundary="00000000000049dbfc05e75d63f1"
X-Original-Sender: huxiaoying2008@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="UhoerA/B";       spf=pass
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

--00000000000049dbfc05e75d63f1
Content-Type: text/plain; charset="UTF-8"

From ad9e714341bbc944d4b8868229f15622592f37d5 Mon Sep 17 00:00:00 2001
From: Hu Xiaoying <huxiaoying@gmail.com>
Date: Wed, 22 Jun 2022 16:35:59 +0800
Subject: [PATCH] usb: Improves USB2.0 write performance

USB external storage device(0x0b05:1932), use gnome-disk-utility tools
to test usb write  < 30MB/s.
Then, igoned to load module of uas for this device.
===============================================
Write speed: Improves form 27MB/s to 40MB/s+

Cc: stable@vger.kernel.org
Signed-off-by: Hu Xiaoying <huxiaoying@gmail.com>
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
+/* Reported-by: Tom Hu <huxiaoying@gmail.com> */
+UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
+               "ASUS",
+               "External HDD",
+               USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+               US_FL_IGNORE_UAS),
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABd4UjYSaZv6H9Q-UbM8QQZk8HcBPrJ7%3DDfDQGxJNVNot68Kfg%40mail.gmail.com.

--00000000000049dbfc05e75d63f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">From ad9e714341bbc944d4b8868229f15622592f37d5 Mon Sep 17 0=
0:00:00 2001<br>From: Hu Xiaoying &lt;<a href=3D"mailto:huxiaoying@gmail.co=
m">huxiaoying@gmail.com</a>&gt;<br>Date: Wed, 22 Jun 2022 16:35:59 +0800<br=
>Subject: [PATCH] usb: Improves USB2.0 write performance<br><br>USB externa=
l storage device(0x0b05:1932), use gnome-disk-utility tools<br>to test usb =
write =C2=A0&lt; 30MB/s.<br>Then, igoned to load module of uas for this dev=
ice.<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>Write speed: Improves form 27MB/s to 40MB/s+<br><br>Cc: <a href=3D"mail=
to:stable@vger.kernel.org">stable@vger.kernel.org</a><br>Signed-off-by: Hu =
Xiaoying &lt;<a href=3D"mailto:huxiaoying@gmail.com">huxiaoying@gmail.com</=
a>&gt;<br>---<br>=C2=A0drivers/usb/storage/unusual_uas.h | 7 +++++++<br>=C2=
=A01 file changed, 7 insertions(+)<br><br>diff --git a/drivers/usb/storage/=
unusual_uas.h b/drivers/usb/storage/unusual_uas.h<br>index 4051c8cd0cd8..ab=
af4ea8138b 100644<br>--- a/drivers/usb/storage/unusual_uas.h<br>+++ b/drive=
rs/usb/storage/unusual_uas.h<br>@@ -157,3 +157,10 @@ UNUSUAL_DEV(0x4971, 0x=
8024, 0x0000, 0x9999,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;External HDD&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 USB_SC_DEVICE, USB_PR_DEVICE, NULL,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 US_FL_ALWAYS_SYNC),<br>+<br>+/* Repo=
rted-by: Tom Hu &lt;<a href=3D"mailto:huxiaoying@gmail.com">huxiaoying@gmai=
l.com</a>&gt; */<br>+UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;ASUS&quot;,<br>+ =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;External HDD&quot;,<br>+ =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 USB_SC_DEVICE, USB_PR_DEVI=
CE, NULL,<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 US_FL_IGNOR=
E_UAS),<br>-- <br>2.25.1<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABd4UjYSaZv6H9Q-UbM8QQZk=
8HcBPrJ7%3DDfDQGxJNVNot68Kfg%40mail.gmail.com?utm_medium=3Demail&utm_source=
=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb=
-storage/CABd4UjYSaZv6H9Q-UbM8QQZk8HcBPrJ7%3DDfDQGxJNVNot68Kfg%40mail.gmail=
.com</a>.<br />

--00000000000049dbfc05e75d63f1--
