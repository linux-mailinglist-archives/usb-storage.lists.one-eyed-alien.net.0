Return-Path: <usb-storage+bncBDTPNYNWQEIBBV5LV3BQMGQEMG3WGMI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C3CAFAFED
	for <lists+usb-storage@lfdr.de>; Mon,  7 Jul 2025 11:39:38 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-235e1d66fa6sf25201405ad.0
        for <lists+usb-storage@lfdr.de>; Mon, 07 Jul 2025 02:39:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751881176; cv=pass;
        d=google.com; s=arc-20240605;
        b=QgCPTY5TiMABtXUYAjjNWgTj3xoY2VlZqdv1nuzkUOs5+NissHoOpDwe0+DGO1plOV
         T+E6RHn10Dg6KRPZDaGJqJfmKEkBJITINpH50G5xgUB/cImP+T/WgoiGmBi9EL31yZ2q
         wBMg6WcjvUk2nLtjwipGTH2kGF1D65/Op/BJF0/Yq0zf9+8nuO/XINWnYXopReIRdnKO
         x3LOe+MrD2mzPY156Xj8829w2+CAmMbpWXjIRG2Y4AuOo3HZ2818yTp6yY9UCeqv6sEQ
         kUBfPb5PS7anS8wEpVRujLaliGWAU9mVNupC8hL/rcyttAKVlBV0x9g55fxWbOGkNKlc
         1XRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :subject:user-agent:mime-version:date:message-id:sender
         :dkim-signature;
        bh=hTv1bp2hzJTOb5SfL7lGSYUBDsujm4Y5yXmH/il8ByY=;
        fh=PmXw8BYiK/H1haJ7Ocn80bmrHGxEcdJNTkICKLIorag=;
        b=awndxZDjZDDI6In3WYmek5MqM2fRIV88SdPixCzdgsS+Qd4qkxqmUdKjIWhEDhX+Z3
         q/eYfME62mJuVBXavNc+zYwH4zgu45zWZkQJwjSt27b6O5UqVahZgY+Qee79fUahiqTW
         kpxK7u78xaNp2RV8QaWGJ8xfwTydCk9iTvSP/dSABzTMxzurBQFAERDUlhLv2T/L4l6i
         fYG3+6CIQ0JX2lc0TC2XvVs4Tud/3pJTAikNAbDk7t9g+cl+KsRHqRG+irKFrPlBWYGy
         eZHJQ9LJDrZ0/O0SO9jdnhPiCQOlYrVDm+eU+jglZWVlxRJnRPNSSdMuvRAnBP/jMVDy
         //Eg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751881176; x=1752485976; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hTv1bp2hzJTOb5SfL7lGSYUBDsujm4Y5yXmH/il8ByY=;
        b=PwATaP4KAVnVzJHoeW2f/U8VTgPTqJClWUpr/QvV5ox9PWvkrYkVi1AA7HXLUO75ym
         Pe8I0FcmZp+MWumdneDzgegyMbtkePLsg5Apq3uRM4hq3NKyyoF0Q+cA7kdyXmYw1fvR
         5rYgINTH16Te3XdJJdSdd8IayTSiDPEpN54q4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751881176; x=1752485976;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-beenthere:x-gm-message-state:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hTv1bp2hzJTOb5SfL7lGSYUBDsujm4Y5yXmH/il8ByY=;
        b=QYdf7wlkqkTTOh5/QQsoy5i/dtDWlC/Ugmf8Ivf2EK9waVl6F+Z+XlbAkuHaoOExlz
         B2hTWOHMG2yuyjsmXz7KPk5iWYlbVyzS6Y1m+1Vi4+Qvwrsvo+bd43wdVuOgGhj9MsPd
         d204NdeTvLdsQGK+JaPFGnkvdugY9vg9JxZVaLImBeHmsgLhbT9jbRCvjhxeSzYVVxIo
         DkhsOen6O4CYNSSiNARL4AMGrqzugqplCrEzw3hhyMYORVoYc8tSm/05ECYY1qgPG55l
         fh5Uq9KQ3l89fQTi7wpzLMx8kVjz2TF0LtiBQ/1XEwrXlZkt+aZ8EmdLFJhwo1rxI453
         z7Qw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWtXyATtD7Er8cpFj5BBn1icHREFbAH8G4MIqBbpt4pYUlHCFoSCSjto9rGW34DR6bm42lT8A==@lfdr.de
X-Gm-Message-State: AOJu0YxTgxN9xbRyYMLYEquxagLWZxAdAx96eqfKRifmxmLq6pOA+0nb
	C5hx2MAVCA4UxEkq/oSYbQI9/plgK3Oq7QG/16wTtXDldXspdtTbP7TlsHY8bxnGM6Q=
X-Google-Smtp-Source: AGHT+IFmFxXnH3Gw0FjXdKDLqHoebx3i7fm27+44VfQXScu9RhaPz38ar45LZ7eF+Vz0764skSXpXQ==
X-Received: by 2002:a17:903:946:b0:235:e76c:4353 with SMTP id d9443c01a7336-23c9109540amr137875055ad.51.1751881176225;
        Mon, 07 Jul 2025 02:39:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZeVgWmwufTZhWIESu7WNscxPKFMfW3Cm3GuGqU9mxuWtw==
Received: by 2002:a17:902:8b84:b0:234:ae27:bf49 with SMTP id
 d9443c01a7336-23c89bb2122ls21530395ad.1.-pod-prod-01-us; Mon, 07 Jul 2025
 02:39:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWanbCc/NzHlDCYPZ1N8V59deT71kO0/uWvWOIv7s0N96ufRmj5KGs4OyzKLJu3BZ6c62FcW9bXdtLZ1A==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:984:b0:234:9497:69e3 with SMTP id d9443c01a7336-23c9105c63amr106580905ad.25.1751881174908;
        Mon, 07 Jul 2025 02:39:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751881174; cv=none;
        d=google.com; s=arc-20240605;
        b=Gmlruw2gd5ep++Sd7rG6CGVSRu/gUUAMpn1xia/FL6IURhICa4KYPGibflAurl7P75
         Rf7j5t9mVUdYu7FTq5VMZdjn7zJNCdmomlPc+wBMhNtjnmr78bC4ZhPMS3psQ5tlMZGU
         YExzAY110X2kFyShp80RNbzHEmRQmmglnwrbIHLJ06TI06SVSITLi6+Mu+aDBjQfuatq
         A4OeUAsbPpCLawSufdakIkmYhhowaLehU8xhA5v7ZROr/mXC6dacpTHy+4/vlPRtzxr+
         oodyy0BtY0tOem+S5PvG2EFxcjAOYj0tQYQ8N3mkKE0L6A09YgndXaNdrG6AS9/0vcQe
         KM6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id;
        bh=k9XKFw/C9EfTKf+ON5FnTKjDlqovt5etTRagaEf1pgo=;
        fh=aQQzdJRFsORi1PMls268opEIcpN9488iDRYb/9EBMrk=;
        b=eXhmcK93zOLRAVRBoMTQfZmXfwJK9gi+FfnmvISXP6rPUKEom7SCur6ueLClTkxg/P
         5LaDnyxrj6Ol7LMc22bT0ac13v+n8y3OOvGEgFoTgCoZuOxjX2oDmNT4I2UM5Uql9UhD
         L4lmOCfhj38bhC7o5U4pLCXdKf1SEw1Wn00w8E4a4ySUhDnoLnP+ga4K0qKEtClnd/l7
         VTwxU9PJoxh86E5dOZVxv3j5Qc221TEfEvZxUIfQvjWalzYyYtDi40G0zlcalBsn9SA4
         xu8/+mMJGvyv3rSSsnH1w8sb/7MQjTtb6IxrTQStpA8mtPIbGJAYXRDiVEi/gPhFGlg8
         ep8g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id d9443c01a7336-23c842cfb00si102066015ad.7.2025.07.07.02.39.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:39:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 473e68f45b1611f0b29709d653e92f7d-20250707
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:d7e7bd0b-d239-4b9d-bbdf-11e748b66ab5,IP:0,U
	RL:0,TC:10,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:10
X-CID-META: VersionHash:6493067,CLOUDID:0e0ec62399c8d822338bf1a4d728e3dd,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:4,Content:0|52,EDM:-3
	,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV
	:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 473e68f45b1611f0b29709d653e92f7d-20250707
X-User: dengjie03@kylinos.cn
Received: from [10.42.12.86] [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <dengjie03@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_128_GCM_SHA256 128/128)
	with ESMTP id 417384217; Mon, 07 Jul 2025 17:39:29 +0800
Content-Type: multipart/alternative;
 boundary="------------U01QCpZArcjT00cB6gnUgI2z"
Message-ID: <0923eae0-adbf-439e-8b83-4641f873a294@kylinos.cn>
Date: Mon, 7 Jul 2025 17:39:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v2] usb: storage: Ignore UAS driver for
 SanDisk Extreme Pro 55AF storage device
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stern@rowland.harvard.edu, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <2025070422-punctured-opal-f51e@gregkh>
 <20250707062507.39531-1-dengjie03@kylinos.cn>
 <2025070725-circle-recite-bc04@gregkh>
From: Jie Deng <dengjie03@kylinos.cn>
In-Reply-To: <2025070725-circle-recite-bc04@gregkh>
X-Original-Sender: dengjie03@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted
 sender) smtp.mailfrom=dengjie03@kylinos.cn
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

This is a multi-part message in MIME format.
--------------U01QCpZArcjT00cB6gnUgI2z
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable


=E5=9C=A8 2025/7/7 16:47, Greg KH =E5=86=99=E9=81=93:
> > So ignore UAS driver for this device.
> >=20
> > Signed-off-by: Jie Deng <dengjie03@kylinos.cn>
> > ---
> > v2:
> > 	* According to the file modification rules (sort by VendorID=20
> > 	  first, then by ProductID.) Add the newly added "UNUSUAL_DEV"=20
> > 	  in the correct position.
> > v1:
> > 	* The newly added "UNUSUAL_DEV" was directly added to the end=20
> > 	  without modifying the format according to the file.
> >=20
> > ---
> >  drivers/usb/storage/unusual_uas.h | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >=20
> > diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/un=
usual_uas.h
> > index 1477e31d7763..6b1a08e2e724 100644
> > --- a/drivers/usb/storage/unusual_uas.h
> > +++ b/drivers/usb/storage/unusual_uas.h
> > @@ -52,6 +52,13 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
> >  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> >  		US_FL_NO_REPORT_OPCODES | US_FL_NO_SAME),
> > =20
> > +/* Reported-by: Jie Deng <dengjie03@kylinos.cn> */
> > +UNUSUAL_DEV(0x0781, 0x55af, 0x0000, 0x9999,
> > +		"SanDisk",
> > +		"Extreme Pro 55AF",
> > +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> > +		US_FL_IGNORE_UAS),
> > +
> >  /* Reported-by: Zhihong Zhou <zhouzhihong@greatwall.com.cn> */
> >  UNUSUAL_DEV(0x0781, 0x55e8, 0x0000, 0x9999,
> >  		"SanDisk",
> > --=20
> > 2.25.1
>
> Why is there two "v2" patches sent here?  Shouldn't this be "v3"?
>
> confused,
>
> greg k-h=E3=80=80=E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80=E3=80=80 =E3=80=
=80 =E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80

The first sent=C2=A0 V2 patch was missing the description of the difference=
s

between V1 and V2 patches. The V2 patch sent for the second time only

adds a description of the differences from the V1 patch compared to the

 =C2=A0V2 patch sent for the first time. There is no modification to the co=
de.

So it is rashly believed that it does not need to be defined as a V3=20
patch.=E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80=E3=80=80

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/0923eae0-adbf-439e-8b83-4641f873a294%40kylinos.=
cn.

--------------U01QCpZArcjT00cB6gnUgI2z
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">=E5=9C=A8 2025/7/7 16:47, Greg KH =E5=86=
=99=E9=81=93:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:2025070725-circle-recite-bc04@gregkh">
      <pre wrap=3D"" class=3D"moz-quote-pre">&gt; So ignore UAS driver for =
this device.
&gt;=20
&gt; Signed-off-by: Jie Deng <a class=3D"moz-txt-link-rfc2396E" href=3D"mai=
lto:dengjie03@kylinos.cn">&lt;dengjie03@kylinos.cn&gt;</a>
&gt; ---
&gt; v2:
&gt; 	* According to the file modification rules (sort by VendorID=20
&gt; 	  first, then by ProductID.) Add the newly added "UNUSUAL_DEV"=20
&gt; 	  in the correct position.
&gt; v1:
&gt; 	* The newly added "UNUSUAL_DEV" was directly added to the end=20
&gt; 	  without modifying the format according to the file.
&gt;=20
&gt; ---
&gt;  drivers/usb/storage/unusual_uas.h | 7 +++++++
&gt;  1 file changed, 7 insertions(+)
&gt;=20
&gt; diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/u=
nusual_uas.h
&gt; index 1477e31d7763..6b1a08e2e724 100644
&gt; --- a/drivers/usb/storage/unusual_uas.h
&gt; +++ b/drivers/usb/storage/unusual_uas.h
&gt; @@ -52,6 +52,13 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
&gt;  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
&gt;  		US_FL_NO_REPORT_OPCODES | US_FL_NO_SAME),
&gt; =20
&gt; +/* Reported-by: Jie Deng <a class=3D"moz-txt-link-rfc2396E" href=3D"m=
ailto:dengjie03@kylinos.cn">&lt;dengjie03@kylinos.cn&gt;</a> */
&gt; +UNUSUAL_DEV(0x0781, 0x55af, 0x0000, 0x9999,
&gt; +		"SanDisk",
&gt; +		"Extreme Pro 55AF",
&gt; +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
&gt; +		US_FL_IGNORE_UAS),
&gt; +
&gt;  /* Reported-by: Zhihong Zhou <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:zhouzhihong@greatwall.com.cn">&lt;zhouzhihong@greatwall.com.cn&g=
t;</a> */
&gt;  UNUSUAL_DEV(0x0781, 0x55e8, 0x0000, 0x9999,
&gt;  		"SanDisk",
&gt; --=20
&gt; 2.25.1

Why is there two "v2" patches sent here?  Shouldn't this be "v3"?

confused,

greg k-h=E3=80=80=E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80=E3=80=80 =E3=80=80=
 =E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80</pre>
    </blockquote>
    <p>The first sent=C2=A0 V2 patch was missing the description of the
      differences=C2=A0</p>
    <p>between V1 and V2 patches. The V2 patch sent for the second time
      only=C2=A0</p>
    <p>adds a description of the differences from the V1 patch compared
      to the</p>
    <p>=C2=A0V2 patch sent for the first time. There is no modification to
      the code.=C2=A0</p>
    <p>So it is rashly believed that it does not need to be defined as a
      V3 patch.<span style=3D"white-space: pre-wrap"> =E3=80=80 =E3=80=80 =
=E3=80=80 =E3=80=80 =E3=80=80=E3=80=80 </span></p>
  </body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/0923eae0-adbf-439e-8b83-4641f873a294=
%40kylinos.cn?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google=
.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0923eae0-adbf-439e-8b83=
-4641f873a294%40kylinos.cn</a>.<br />

--------------U01QCpZArcjT00cB6gnUgI2z--
