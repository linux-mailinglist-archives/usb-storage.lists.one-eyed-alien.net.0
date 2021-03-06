Return-Path: <usb-storage+bncBCE2BNFQ5EORBVWNROBAMGQEEXJCX3A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com [IPv6:2607:f8b0:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F36232F7C4
	for <lists+usb-storage@lfdr.de>; Sat,  6 Mar 2021 03:20:08 +0100 (CET)
Received: by mail-oi1-x246.google.com with SMTP id j16sf2336396oij.10
        for <lists+usb-storage@lfdr.de>; Fri, 05 Mar 2021 18:20:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614997207; cv=pass;
        d=google.com; s=arc-20160816;
        b=A2xq1RsYgx1niLb6RgQPAXaLi6eTEkjl6O64Yoy5odGpzKJJmQonmCD8j/Omm/mD1I
         Q6j32VB4ILgWKhjjLDBqrHWIkq9vK3XwfJOoKnlZVnPdjqFz9GcwbAuLt9eAcXFs9hyM
         LukvyehYNDEVZuqhgDzIWIKtGqXblHaxEQQbfZHsfp1SKlmyXA807hmOkD56zTd0+B1g
         Ha8QkJra1l0NAW4MfD3wVPdYqkxqSYtrFUyjrdl4EHO/dwqec4Xp5Mmr0mlDM0uDWbMo
         YspkDH8GfevB1KAjCX02hQ//vMciWxyD1dXCH7q0ljOiQTGJrU2wDOkWXmT6dqYqAWjw
         sV6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=CB9Itdi3xpygEMJnfPkObED5kRFiUGVMR+QqdwMKEPU=;
        b=HHNmZZYIAmTtOsmunzeqpaDSU+9M81hDQXsoAuMDdfyRK2dAz1FF7FIwEBSR8PWRHG
         7lnwcYo8A3hDi4ERaX9EeoFfCamGFbMkC+s+QJUIqlKYV8/AkOzTcynNKjIKZTc4P1bs
         NF7fyrP8HonWonbIzWWsRffKM/WiufTldPHY+/9CvtBp6VuTPAwa9emK6JESYrev8IVH
         83iB4DKdezMXYp2UXBFNrdaaSY7LGQwkjNv4by4EjLdBQrbmRxi54Y4rbScfGPkolwCD
         HLlTY73Fz5UvOqMdNOjSj81wCRVfNpWt0Aed6HIMmdZt1I1tcHUixzf33cdAkU4Us4VM
         Ei2Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b0P8yCdT;
       spf=pass (google.com: domain of hzpeterchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=hzpeterchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CB9Itdi3xpygEMJnfPkObED5kRFiUGVMR+QqdwMKEPU=;
        b=ht6LUVf7cF317tUqHuChCxTpOR2NhAHJltFW+68bJq2tiVvQdH6ILH1r8XA2Jd4usP
         nPuCeBD15DpV4pPQy/fPfg/nh5RzIdL4i01rpHiE3lCJ/W36+mzNbPfT1XLsXmDvA6zV
         NJNApfkWj0y1/doagNuhitOl0XhyIyBtp55gQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CB9Itdi3xpygEMJnfPkObED5kRFiUGVMR+QqdwMKEPU=;
        b=hnXy/xsOtvIV1JJvLct7iL22jWRO5t4eNcJgZi9er0yNhkjjXQIyXly83oVbfXPSlv
         UP5FjBLE2H3tAR/jHchYtOi6Fu0a127/5NLAfhx87Rij5vbXjdEwPpaNDXpCwNaOvR2X
         rT+bxF1XjRn+0IFddkXpG9Ms2D/2ICP4oinPpTGsUFIQkdKQ1F8aiY7qfFGRV+joym0V
         plFdxRAqNUJQBbygsoFNpg8IxRtTUGT3iMhf9xY9O0ehkpJNYSeiJZNEQSPjm/MomdpR
         TbMbmX2Tv1aOV1u3gBD8tjMehc+wSYf8H0bP4mxkerVn7hQzqLQbWzN3IaCwRQ7g6PTf
         6EFw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533b1zaPmsNg6J9DEgRQdmAbsOqrMk0pFrlCr8WySMU0ogOdVHca
	jrA4Ty07JZ1Z1PXQ8U/0pdoc8w==
X-Google-Smtp-Source: ABdhPJz7C8+mEbtJIIYGJzpzsiv+9qO/JJcwrU1k9B2GGaQjsPG9KYDI5m0zQKlp/BYlilgca7rT2w==
X-Received: by 2002:a54:4806:: with SMTP id j6mr3859696oij.15.1614997206776;
        Fri, 05 Mar 2021 18:20:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:1553:: with SMTP id l19ls3065601otp.4.gmail; Fri,
 05 Mar 2021 18:20:06 -0800 (PST)
X-Received: by 2002:a9d:1d43:: with SMTP id m61mr9158855otm.32.1614997206059;
        Fri, 05 Mar 2021 18:20:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614997206; cv=none;
        d=google.com; s=arc-20160816;
        b=p25YGkqd8rO9bDDBpuim11oqQEj+t4btp8LNFyC9yWCu0xwD4ixMOFIDARw1KWB4i8
         nZNlioSBe6UVtFD7oK85oLyeF9hlS1OLxSzcsAqUSCWLLxP1KzS0i+0b/wdzYTUZtXjI
         miN1JUUA+xSWCvFvjvpMWQQQCLKeaj2ZEtVMmDLsR/63UABXz4x4Y8XblmLyGaT2P0J2
         7QIAncWauv2ThW0i87mXjvnXDPR4lyYyTObv9pJuZquA6HWizDHHri76N7MrssqIUlzK
         hr612e+IblHDCGaECS01CBrHrgN7nnPN8qm1B6af3Xfa8TOQMdsvtjP23bG4aYEgvIMC
         VVCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OBuahpFNmvSvvpbpiRw5pihTdLEQBuyfAbZEIUYJYrM=;
        b=flneptYP824m2KjRCnoeligMzyOCFH3Z10W8JlBA99iFt72BVH9XUet+4vVatI8Had
         Vj2fA8+I2TCL8JODMfhXnvrRiibRr1RGRpWGzSHhnSAc0XN5PndzIGBkNBKbxC8glNpu
         o1NxrwvSegL954Wt1lghybuqNw4MoGmcWK39iL5qoDW2Auu5hBMpAgpRom7625Hu8nSF
         gPg6GYgMSeFb9ZTom2d+YTw9bvxqOsYBNh7l+ligNsd5KL1ImrrXxvLpHsovzfjmGi5z
         MXHqIoy+VJjPuX/iE3jDYmro709dd9mZkUGcjfaqUUE8fbX5cH6UeZgpToJNn0gc59HF
         IjrA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b0P8yCdT;
       spf=pass (google.com: domain of hzpeterchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=hzpeterchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id u8sor997089otg.59.2021.03.05.18.20.06
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 05 Mar 2021 18:20:06 -0800 (PST)
Received-SPF: pass (google.com: domain of hzpeterchen@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a9d:404b:: with SMTP id o11mr878765oti.342.1614997205831;
 Fri, 05 Mar 2021 18:20:05 -0800 (PST)
MIME-Version: 1.0
References: <9f57532f-1fb7-0fdd-b91c-2dfecef5aff3@gentoo.org> <20210305191437.GC48113@rowland.harvard.edu>
In-Reply-To: <20210305191437.GC48113@rowland.harvard.edu>
From: Peter Chen <hzpeterchen@gmail.com>
Date: Sat, 6 Mar 2021 10:19:54 +0800
Message-ID: <CAL411-qf+c_CB4cL=2349QqCCYimOBCYxXbsOfLbvVYOg0294g@mail.gmail.com>
Subject: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Matthias Schwarzott <zzam@gentoo.org>, USB list <linux-usb@vger.kernel.org>, 
	usb-storage@lists.one-eyed-alien.net, hirofumi@mail.parknet.co.jp
Content-Type: multipart/alternative; boundary="000000000000c4515b05bcd4d662"
X-Original-Sender: hzpeterchen@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=b0P8yCdT;       spf=pass
 (google.com: domain of hzpeterchen@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=hzpeterchen@gmail.com;       dmarc=pass
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

--000000000000c4515b05bcd4d662
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 6, 2021 at 3:17 AM Alan Stern <stern@rowland.harvard.edu> wrote:

> On Fri, Mar 05, 2021 at 05:54:43PM +0100, Matthias Schwarzott wrote:
> > Hi folks,
> >
> > I have an issue with my Amazon Kindle. Since some time the device
> > disconnects 2 seconds after a sync command sent via USB.
> >
> > See also this matching bug report:
> > https://bugzilla.kernel.org/show_bug.cgi?id=203973
> >
> > My current workaround is this udev-rule:
> >       SUBSYSTEM=="block", ACTION=="add", ENV{DEVTYPE}=="disk",
> > ENV{ID_VENDOR}=="Kindle", RUN+="/bin/bash -c 'echo write\ through >
> > /sys/block/%k/queue/write_cache'"
> >
> > But I like to find a proper solution.
> >
> > I did various recordings of usb-traffic with wireshark on linux and
> windows.
> >
> > On windows, the device does not disconnect after the "Synchronize Cache"
> > command.
> >
> > One major difference I noticed looking at service answer time statistics:
> > Windows sends a lot more requests of type "Test Unit Ready".
> > * Windows: 6385 calls
> > * linux: 71 calls
>
> It's generally well known that Windows issues lots and lots of redundant
> commands to USB storage drives.
>
> > After most of the "Synchronize Cache" commands on windows there was
> directly
> > a following "WRITE" command. It seems WRITE commands avoid the
> disconnect.
> >
> > But sending a plain "Synchronize Cache" under windows (8.1 and 10) does
> not
> > trigger the disconnect.
> >
> > Windows:
> > 1583  14.891478       host    1.6.1   USBMS   58      SCSI: Synchronize
> Cache(10) LUN: 0x00
> > (LBA: 0x00000000, Len: 0)
> > 1584  14.891595       1.6.1   host    USB     27      URB_BULK out
> > 1585  14.891613       host    1.6.1   USB     27      URB_BULK in
> > 1586  14.896866       1.6.1   host    USBMS   40      SCSI: Response
> LUN: 0x00 (Synchronize
> > Cache(10)) (Good)
> > 1589  15.687209       host    1.6.1   USBMS   58      SCSI: Test Unit
> Ready LUN: 0x00
> > 1590  15.687353       1.6.1   host    USB     27      URB_BULK out
> > 1591  15.687358       host    1.6.1   USB     27      URB_BULK in
> > 1592  15.687405       1.6.1   host    USBMS   40      SCSI: Response
> LUN: 0x00 (Test Unit
> > Ready) (Good)
> > 1713  16.699689       host    1.6.1   USBMS   58      SCSI: Test Unit
> Ready LUN: 0x00
> > 1714  16.699820       1.6.1   host    USB     27      URB_BULK out
> > 1715  16.699825       host    1.6.1   USB     27      URB_BULK in
> > 1716  16.699915       1.6.1   host    USBMS   40      SCSI: Response
> LUN: 0x00 (Test Unit
> > Ready) (Good)
> > 1717  17.709334       host    1.6.1   USBMS   58      SCSI: Test Unit
> Ready LUN: 0x00
> > 1718  17.709547       1.6.1   host    USB     27      URB_BULK out
> > 1719  17.709552       host    1.6.1   USB     27      URB_BULK in
> > 1720  17.709586       1.6.1   host    USBMS   40      SCSI: Response
> LUN: 0x00 (Test Unit
> > Ready) (Good)
> > 1721  18.712864       host    1.6.1   USBMS   58      SCSI: Test Unit
> Ready LUN: 0x00
> > 1722  18.713081       1.6.1   host    USB     27      URB_BULK out
> > 1723  18.713086       host    1.6.1   USB     27      URB_BULK in
> > 1724  18.713148       1.6.1   host    USBMS   40      SCSI: Response
> LUN: 0x00 (Test Unit
> > Ready) (Good)
> > 1741  19.735245       host    1.6.1   USBMS   58      SCSI: Test Unit
> Ready LUN: 0x00
> > 1742  19.735410       1.6.1   host    USB     27      URB_BULK out
> > 1743  19.735415       host    1.6.1   USB     27      URB_BULK in
> > 1744  19.735474       1.6.1   host    USBMS   40      SCSI: Response
> LUN: 0x00 (Test Unit
> > Ready) (Good)
> > 1811  20.747477       host    1.6.1   USBMS   58      SCSI: Test Unit
> Ready LUN: 0x00
> > 1812  20.747699       1.6.1   host    USB     27      URB_BULK out
> > 1813  20.747704       host    1.6.1   USB     27      URB_BULK in
> > 1814  20.747766       1.6.1   host    USBMS   40      SCSI: Response
> LUN: 0x00 (Test Unit
> > Ready) (Good)
> > 1905  21.755419       host    1.6.1   USBMS   58      SCSI: Test Unit
> Ready LUN: 0x00
> > 1906  21.755579       1.6.1   host    USB     27      URB_BULK out
> > 1907  21.755584       host    1.6.1   USB     27      URB_BULK in
> > 1908  21.755674       1.6.1   host    USBMS   40      SCSI: Response
> LUN: 0x00 (Test Unit
> > Ready) (Good)
> > 1911  22.769205       host    1.6.1   USBMS   58      SCSI: Test Unit
> Ready LUN: 0x00
> > 1912  22.769355       1.6.1   host    USB     27      URB_BULK out
> > 1913  22.769360       host    1.6.1   USB     27      URB_BULK in
> > 1914  22.769415       1.6.1   host    USBMS   40      SCSI: Response
> LUN: 0x00 (Test Unit
> > Ready) (Good)
>
> Unless the Kindle advertises removable media, there doesn't seem to be
> any real point to all those TEST UNIT READY commands.  Unless they are
> what prevents the disconnections...
>
> > How can I get further on this topic?
>
> Is runtime power management enabled?  Maybe the Kindle disconnects
> whenever the computer tries to suspend it.  This typically happens 2
> seconds after the last command was issued, which matches your
> observations.  If runtime PM is enabled, you can try disabling it.
>
>
Alan, I think you may be right. It might want to support the feature like
kindle goes to suspend after the Windows PC
enters suspend (but VBUS is there), the Windows PC may never suspend the
bus if a mass storage device is connected.

Peter


> Alternatively, a number of Linux kernel developers work for Amazon (or
> at least, use email addresses ending in "@amazon.com"), as shown by the
> MAINTAINERS file.  Maybe one of them can get in touch with the Kindle
> software development people and find the actual answer.
>
> Alan Stern
>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAL411-qf%2Bc_CB4cL%3D2349QqCCYimOBCYxXbsOfLbvVYOg0294g%40mail.gmail.com.

--000000000000c4515b05bcd4d662
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Sat, Mar 6, 2021 at 3:17 AM Alan Stern=
 &lt;<a href=3D"mailto:stern@rowland.harvard.edu">stern@rowland.harvard.edu=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On Fri, Mar 05, 2021 at 05:54:43PM +0100, Matthias Schwarzott wrote:<br>
&gt; Hi folks,<br>
&gt; <br>
&gt; I have an issue with my Amazon Kindle. Since some time the device<br>
&gt; disconnects 2 seconds after a sync command sent via USB.<br>
&gt; <br>
&gt; See also this matching bug report:<br>
&gt; <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D203973" rel=
=3D"noreferrer" target=3D"_blank">https://bugzilla.kernel.org/show_bug.cgi?=
id=3D203973</a><br>
&gt; <br>
&gt; My current workaround is this udev-rule:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0SUBSYSTEM=3D=3D&quot;block&quot;, ACTION=3D=
=3D&quot;add&quot;, ENV{DEVTYPE}=3D=3D&quot;disk&quot;,<br>
&gt; ENV{ID_VENDOR}=3D=3D&quot;Kindle&quot;, RUN+=3D&quot;/bin/bash -c &#39=
;echo write\ through &gt;<br>
&gt; /sys/block/%k/queue/write_cache&#39;&quot;<br>
&gt; <br>
&gt; But I like to find a proper solution.<br>
&gt; <br>
&gt; I did various recordings of usb-traffic with wireshark on linux and wi=
ndows.<br>
&gt; <br>
&gt; On windows, the device does not disconnect after the &quot;Synchronize=
 Cache&quot;<br>
&gt; command.<br>
&gt; <br>
&gt; One major difference I noticed looking at service answer time statisti=
cs:<br>
&gt; Windows sends a lot more requests of type &quot;Test Unit Ready&quot;.=
<br>
&gt; * Windows: 6385 calls<br>
&gt; * linux: 71 calls<br>
<br>
It&#39;s generally well known that Windows issues lots and lots of redundan=
t <br>
commands to USB storage drives.<br>
<br>
&gt; After most of the &quot;Synchronize Cache&quot; commands on windows th=
ere was directly<br>
&gt; a following &quot;WRITE&quot; command. It seems WRITE commands avoid t=
he disconnect.<br>
&gt; <br>
&gt; But sending a plain &quot;Synchronize Cache&quot; under windows (8.1 a=
nd 10) does not<br>
&gt; trigger the disconnect.<br>
&gt; <br>
&gt; Windows:<br>
&gt; 1583=C2=A0 14.891478=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USBMS=C2=A0 =C2=A058=C2=A0 =C2=A0 =C2=A0 SCSI: Synchronize Cac=
he(10) LUN: 0x00<br>
&gt; (LBA: 0x00000000, Len: 0)<br>
&gt; 1584=C2=A0 14.891595=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK out<br=
>
&gt; 1585=C2=A0 14.891613=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK in<br>
&gt; 1586=C2=A0 14.896866=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USBMS=C2=A0 =C2=A040=C2=A0 =C2=A0 =C2=A0 SCSI: Response LUN: =
0x00 (Synchronize<br>
&gt; Cache(10)) (Good)<br>
&gt; 1589=C2=A0 15.687209=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USBMS=C2=A0 =C2=A058=C2=A0 =C2=A0 =C2=A0 SCSI: Test Unit Ready=
 LUN: 0x00<br>
&gt; 1590=C2=A0 15.687353=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK out<br=
>
&gt; 1591=C2=A0 15.687358=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK in<br>
&gt; 1592=C2=A0 15.687405=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USBMS=C2=A0 =C2=A040=C2=A0 =C2=A0 =C2=A0 SCSI: Response LUN: =
0x00 (Test Unit<br>
&gt; Ready) (Good)<br>
&gt; 1713=C2=A0 16.699689=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USBMS=C2=A0 =C2=A058=C2=A0 =C2=A0 =C2=A0 SCSI: Test Unit Ready=
 LUN: 0x00<br>
&gt; 1714=C2=A0 16.699820=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK out<br=
>
&gt; 1715=C2=A0 16.699825=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK in<br>
&gt; 1716=C2=A0 16.699915=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USBMS=C2=A0 =C2=A040=C2=A0 =C2=A0 =C2=A0 SCSI: Response LUN: =
0x00 (Test Unit<br>
&gt; Ready) (Good)<br>
&gt; 1717=C2=A0 17.709334=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USBMS=C2=A0 =C2=A058=C2=A0 =C2=A0 =C2=A0 SCSI: Test Unit Ready=
 LUN: 0x00<br>
&gt; 1718=C2=A0 17.709547=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK out<br=
>
&gt; 1719=C2=A0 17.709552=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK in<br>
&gt; 1720=C2=A0 17.709586=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USBMS=C2=A0 =C2=A040=C2=A0 =C2=A0 =C2=A0 SCSI: Response LUN: =
0x00 (Test Unit<br>
&gt; Ready) (Good)<br>
&gt; 1721=C2=A0 18.712864=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USBMS=C2=A0 =C2=A058=C2=A0 =C2=A0 =C2=A0 SCSI: Test Unit Ready=
 LUN: 0x00<br>
&gt; 1722=C2=A0 18.713081=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK out<br=
>
&gt; 1723=C2=A0 18.713086=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK in<br>
&gt; 1724=C2=A0 18.713148=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USBMS=C2=A0 =C2=A040=C2=A0 =C2=A0 =C2=A0 SCSI: Response LUN: =
0x00 (Test Unit<br>
&gt; Ready) (Good)<br>
&gt; 1741=C2=A0 19.735245=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USBMS=C2=A0 =C2=A058=C2=A0 =C2=A0 =C2=A0 SCSI: Test Unit Ready=
 LUN: 0x00<br>
&gt; 1742=C2=A0 19.735410=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK out<br=
>
&gt; 1743=C2=A0 19.735415=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK in<br>
&gt; 1744=C2=A0 19.735474=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USBMS=C2=A0 =C2=A040=C2=A0 =C2=A0 =C2=A0 SCSI: Response LUN: =
0x00 (Test Unit<br>
&gt; Ready) (Good)<br>
&gt; 1811=C2=A0 20.747477=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USBMS=C2=A0 =C2=A058=C2=A0 =C2=A0 =C2=A0 SCSI: Test Unit Ready=
 LUN: 0x00<br>
&gt; 1812=C2=A0 20.747699=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK out<br=
>
&gt; 1813=C2=A0 20.747704=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK in<br>
&gt; 1814=C2=A0 20.747766=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USBMS=C2=A0 =C2=A040=C2=A0 =C2=A0 =C2=A0 SCSI: Response LUN: =
0x00 (Test Unit<br>
&gt; Ready) (Good)<br>
&gt; 1905=C2=A0 21.755419=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USBMS=C2=A0 =C2=A058=C2=A0 =C2=A0 =C2=A0 SCSI: Test Unit Ready=
 LUN: 0x00<br>
&gt; 1906=C2=A0 21.755579=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK out<br=
>
&gt; 1907=C2=A0 21.755584=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK in<br>
&gt; 1908=C2=A0 21.755674=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USBMS=C2=A0 =C2=A040=C2=A0 =C2=A0 =C2=A0 SCSI: Response LUN: =
0x00 (Test Unit<br>
&gt; Ready) (Good)<br>
&gt; 1911=C2=A0 22.769205=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USBMS=C2=A0 =C2=A058=C2=A0 =C2=A0 =C2=A0 SCSI: Test Unit Ready=
 LUN: 0x00<br>
&gt; 1912=C2=A0 22.769355=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK out<br=
>
&gt; 1913=C2=A0 22.769360=C2=A0 =C2=A0 =C2=A0 =C2=A0host=C2=A0 =C2=A0 1.6.1=
=C2=A0 =C2=A0USB=C2=A0 =C2=A0 =C2=A027=C2=A0 =C2=A0 =C2=A0 URB_BULK in<br>
&gt; 1914=C2=A0 22.769415=C2=A0 =C2=A0 =C2=A0 =C2=A01.6.1=C2=A0 =C2=A0host=
=C2=A0 =C2=A0 USBMS=C2=A0 =C2=A040=C2=A0 =C2=A0 =C2=A0 SCSI: Response LUN: =
0x00 (Test Unit<br>
&gt; Ready) (Good)<br>
<br>
Unless the Kindle advertises removable media, there doesn&#39;t seem to be =
<br>
any real point to all those TEST UNIT READY commands.=C2=A0 Unless they are=
 <br>
what prevents the disconnections...<br>
<br>
&gt; How can I get further on this topic?<br>
<br>
Is runtime power management enabled?=C2=A0 Maybe the Kindle disconnects <br=
>
whenever the computer tries to suspend it.=C2=A0 This typically happens 2 <=
br>
seconds after the last command was issued, which matches your <br>
observations.=C2=A0 If runtime PM is enabled, you can try disabling it.<br>
<br></blockquote><div><br></div><div>Alan, I think you may be right. It mig=
ht want to support the feature like kindle=C2=A0goes to suspend after the W=
indows PC</div><div> enters suspend (but VBUS is there), the Windows PC may=
 never suspend the bus if a mass storage device is connected.</div><div><br=
></div><div>Peter</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
Alternatively, a number of Linux kernel developers work for Amazon (or <br>
at least, use email addresses ending in &quot;@<a href=3D"http://amazon.com=
" rel=3D"noreferrer" target=3D"_blank">amazon.com</a>&quot;), as shown by t=
he <br>
MAINTAINERS file.=C2=A0 Maybe one of them can get in touch with the Kindle =
<br>
software development people and find the actual answer.<br>
<br>
Alan Stern<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAL411-qf%2Bc_CB4cL%3D234=
9QqCCYimOBCYxXbsOfLbvVYOg0294g%40mail.gmail.com?utm_medium=3Demail&utm_sour=
ce=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/u=
sb-storage/CAL411-qf%2Bc_CB4cL%3D2349QqCCYimOBCYxXbsOfLbvVYOg0294g%40mail.g=
mail.com</a>.<br />

--000000000000c4515b05bcd4d662--
