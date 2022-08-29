Return-Path: <usb-storage+bncBC72LGEK34ERBXP7WGMAMGQEOIDV3JI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ua1-x947.google.com (mail-ua1-x947.google.com [IPv6:2607:f8b0:4864:20::947])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F655A4593
	for <lists+usb-storage@lfdr.de>; Mon, 29 Aug 2022 10:59:10 +0200 (CEST)
Received: by mail-ua1-x947.google.com with SMTP id u64-20020ab045c6000000b0039f7d5b5aecsf1418803uau.5
        for <lists+usb-storage@lfdr.de>; Mon, 29 Aug 2022 01:59:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661763549; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZinMk7wzbweG7kbWrvKu9CoIAyF3ReusCFIQl21i9WUc4GYeo6bZPXGuT/xFgIxFIU
         j3bdnXwQl5qPgkgz8JnUEaaJW4YLGroCXku7twWWbCGyKWLk9zjM158s6ge6izWl2keC
         mUBqRfsjGKNsd4Cgw4eOkBVBJOrVTcGZKbJuA88tD7kttRdQZ66Rry/HzC8ap99q+LXs
         VrWjRsBoNG4Ge4uvWUmnfAfmZDNFyyyuGHaQMTH95j37hw1aMR3D8llruYzxddCLrCr0
         QrMPGzXPjYdM6z1MFIvAvc/0UwKKqvm6xTmNc56QzwZxBhnv9JXJjOOFLAEmS9EbC7rV
         z6hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=I0mBD5kr6y2zLo2xZoMtJrd53EsagB45wGiT5Ov4aT8=;
        b=So+zLWr/gtRHsK454AuEIH+tsUsY809xiUIYA3XsBRi+7OW5DF7cA8YAgwu7KNoUiP
         P/nfj7zmpi/32awgTI89+A73XvClHcYhc0dsW8GVK/Ka0RtPytT1wUYsYIk9T+DEiut+
         +9TlXQuaGro4cdrFt4cqtdb5CZJyNJdF4zcvnSEQoSEC9WL/DUMdJu6N9ewoddkzO5I6
         MGWZHZtd1i51c47y6mHaWFkaV9fdhAnSzRf7p3YaE/qykTEi05W2DXA0MaPOJLZHZLYp
         9iSBU6OrqH0PqWbEr/SYiaDqP18r7ekfJTuRdSfhWulrtBn3GeCbwoNZIceirZIKZbjL
         vfbg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UNR2pV9F;
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc;
        bh=I0mBD5kr6y2zLo2xZoMtJrd53EsagB45wGiT5Ov4aT8=;
        b=fvNuCOE+YM/UeLvu5HIafkG5Unxa30MCmelf3Ga3t0nPHlUNh2bkKHnsZIpGWydjHA
         tvLrQ9PVX+2RqQFlYS9+L+8gUupfkI0qg9+ZRDoE6sDMpIZ/YtBAivmzPlGtt/RAUi9c
         9nUqQeDz9++srFHhSoeOJiW9qESFpYhgBfMQQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc;
        bh=I0mBD5kr6y2zLo2xZoMtJrd53EsagB45wGiT5Ov4aT8=;
        b=N/TK3huifBThRfi9J+FN0lYvtm//tzdlFReALYsefhkRLNArWhZ4frP+bB/EuEtHYn
         AM7DjyD3TYDl2WG5tTcQZYVfi6qGHAdMB4sQO4nSBwbawnRvOlASdRmXTl8vMsMQRhCz
         94feBXvdDlTR0DO016dl0xc3w+BrEwTTWhEkt9M/B9nYBUFF9l6dkxtpQIPkxflSWiAq
         jhcA6vktj6GR4xAwySj9OWgOd+Hk6uzXB8JjeumrNARZjSX/Qsa3oHu2k8DLAH6z0NZU
         9DzgUOWMwIyciaPiVYFjgDU83piIN57tOQ7IjbxVji/ml6KSBZP1xwF4tkZurPNv/fO0
         yZyw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2jRB13LCqOJnl//HSrVrmDGXmmDfWoJrBrcvBlPWQcbFPiHeIU
	aGa16wOVtSa9bMBFdKyoQ9HMag==
X-Google-Smtp-Source: AA6agR4hFg0boNAbgZuMWAajVGDqULSNfNo/ZR+4y6O+doj8AF0uKqnz5dFlJHjofT17w2ttrFjzHQ==
X-Received: by 2002:a67:c299:0:b0:390:e39e:7d69 with SMTP id k25-20020a67c299000000b00390e39e7d69mr996716vsj.76.1661763549505;
        Mon, 29 Aug 2022 01:59:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1f:3848:0:b0:38a:dd08:f300 with SMTP id f69-20020a1f3848000000b0038add08f300ls382890vka.5.-pod-prod-gmail;
 Mon, 29 Aug 2022 01:59:09 -0700 (PDT)
X-Received: by 2002:a1f:a1c6:0:b0:38c:d49c:3528 with SMTP id k189-20020a1fa1c6000000b0038cd49c3528mr2754617vke.7.1661763548900;
        Mon, 29 Aug 2022 01:59:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661763548; cv=none;
        d=google.com; s=arc-20160816;
        b=Gr49N6CiQNfraZEark+c1nFUtJcJzbMwbopVMDpZ/fN+rn0i1zpIF6B2Pb0xCY+B7Z
         +FNCWxYeqH3hXozwDwWjnmbPMlSY5Oa4LYRHz2T+R6UvIQ/6Fab6MQNPcTBKPnumUncZ
         hiQ0Bpikuw7LXO8YyvgTUVFxs1OjR2nfM+WaOujvoBCsa9sD8Yu3+xHb1ZnZp6vZZIel
         l6M3gxAsJCmgKGoj+blZZjnX5Jh8N0mIcupA93zZ4DD0nceXvV/6YcXPKlTJno5SqMAb
         DytJPZezKyExNSmPPNRKVYPPfX3USC5OQKoc1HwN6hydaaaq7u0RzTslS20GDr1kqpdR
         SVHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=MLC354V6n/ctof47xsTQmF6Yfh7Hxv240l5otlFnnQQ=;
        b=dhoXpUvCy8FdEQ3xSqPZ3E/kH+vr4xNpdu2bdu1mr5RV/shJfuuIFOd5BFfQdRqmKZ
         oPzfVRnpbVUj5bvr6JTxx9hfYBzGCJW3KldDpszPTCscZPAtR8K/y3h/5j6M3JOZFmKN
         G4YhMh8+3TLKxbjPh+IOxLvBpNtMvfVcmIs6/wAxnqhFHMRfaOGAr3zG/PL6Y2A4Gi2M
         i8FV+lCMRPTCUo197ScWYR4M71V51CvHD3VwT0OIzNd3/fPtpr1NhPBZht4KkRi4lFDu
         8R+EUNSrZyRP931GhOdWBKrxdMKhRi1jSJghVESo1878ZiMY4EoQhn3yVp7wTHxGbUZR
         Yizg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UNR2pV9F;
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d2-20020ab030e2000000b00390fc27a21fsor1130388uam.32.2022.08.29.01.59.08
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 29 Aug 2022 01:59:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:ab0:14ef:0:b0:39e:df1d:8eff with SMTP id
 f44-20020ab014ef000000b0039edf1d8effmr3108218uae.97.1661763548576; Mon, 29
 Aug 2022 01:59:08 -0700 (PDT)
MIME-Version: 1.0
From: Hu Xiaoying <huxiaoying2008@gmail.com>
Date: Mon, 29 Aug 2022 16:58:57 +0800
Message-ID: <CABd4UjYS4QDozv-RKp3_9XhQec=LO+z9U8+=Oa8=MEFyaeXYhA@mail.gmail.com>
Subject: [usb-storage] [PATCH v2] usb: Improves USB2.0 write performance
To: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org, 
	gregkh@linuxfoundation.org, stern@rowland.harvard.edu
Content-Type: multipart/alternative; boundary="00000000000003815d05e75d7ac0"
X-Original-Sender: huxiaoying2008@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=UNR2pV9F;       spf=pass
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

--00000000000003815d05e75d7ac0
Content-Type: text/plain; charset="UTF-8"

From: Hu Xiaoying <huxiaoying@gmail.com>

USB external storage device(0x0b05:1932), use gnome-disk-utility tools
to test usb write  < 30MB/s.
Then, igoned to load module of uas for this device.
===============================================
Write speed: Improves form 27MB/s to 40MB/s+

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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABd4UjYS4QDozv-RKp3_9XhQec%3DLO%2Bz9U8%2B%3DOa8%3DMEFyaeXYhA%40mail.gmail.com.

--00000000000003815d05e75d7ac0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">From: Hu Xiaoying &lt;<a href=3D"mailto:huxiaoying@gmail.c=
om" target=3D"_blank">huxiaoying@gmail.com</a>&gt;<br><br>USB external stor=
age device(0x0b05:1932), use gnome-disk-utility tools<br>to test usb write =
=C2=A0&lt; 30MB/s.<br>Then, igoned to load module of uas for this device.<b=
r>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Wr=
ite speed: Improves form 27MB/s to 40MB/s+<br><br>Signed-off-by: Hu Xiaoyin=
g &lt;<a href=3D"mailto:huxiaoying@gmail.com" target=3D"_blank">huxiaoying@=
gmail.com</a>&gt;<br>---<br>=C2=A0drivers/usb/storage/unusual_uas.h | 7 +++=
++++<br>=C2=A01 file changed, 7 insertions(+)<br><br>diff --git a/drivers/u=
sb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h<br>index 4051c=
8cd0cd8..abaf4ea8138b 100644<br>--- a/drivers/usb/storage/unusual_uas.h<br>=
+++ b/drivers/usb/storage/unusual_uas.h<br>@@ -157,3 +157,10 @@ UNUSUAL_DEV=
(0x4971, 0x8024, 0x0000, 0x9999,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &quot;External HDD&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 USB_SC_DEVICE, USB_PR_DEVICE, NULL,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 US_FL_ALWAYS_SYNC),<br>+<b=
r>+/* Reported-by: Tom Hu &lt;<a href=3D"mailto:huxiaoying@gmail.com" targe=
t=3D"_blank">huxiaoying@gmail.com</a>&gt; */<br>+UNUSUAL_DEV(0x0b05, 0x1932=
, 0x0000, 0x9999,<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &qu=
ot;ASUS&quot;,<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
External HDD&quot;,<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 U=
SB_SC_DEVICE, USB_PR_DEVICE, NULL,<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 US_FL_IGNORE_UAS),<font color=3D"#888888"><br>--<br>2.25.1</f=
ont><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABd4UjYS4QDozv-RKp3_9XhQ=
ec%3DLO%2Bz9U8%2B%3DOa8%3DMEFyaeXYhA%40mail.gmail.com?utm_medium=3Demail&ut=
m_source=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/m=
sgid/usb-storage/CABd4UjYS4QDozv-RKp3_9XhQec%3DLO%2Bz9U8%2B%3DOa8%3DMEFyaeX=
YhA%40mail.gmail.com</a>.<br />

--00000000000003815d05e75d7ac0--
