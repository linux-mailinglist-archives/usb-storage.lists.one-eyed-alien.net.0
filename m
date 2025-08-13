Return-Path: <usb-storage+bncBD64ZMV5YYBRBN5O6PCAMGQE52BW7FQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B65B252E1
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 20:19:37 +0200 (CEST)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-70a9f55836dsf3791226d6.3
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 11:19:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755109176; cv=pass;
        d=google.com; s=arc-20240605;
        b=R1Poidvu5dwNq7Baka2/Dozo3BmxETOpwAzk94G70R/E3tQxzZCArahAFxHYYqE2RD
         8zon5qZFzaaOEadBHX28MBtOhcRXWvQvXxDumuYGjy/pH8f4kVurV8FtJaqfEDzmbfiv
         ku1Dx9u4m6HP8SB/o6Rt8/7uMxY6vrH5ofAa1chCcfPNFf5Bl1K/rX87nOtUMKz/JCwG
         rl4xbZYOgUIt7mYAsoAUNrouoaqePAfc62diYdxe80/DAoRiI31ISGEfXIk+yiGmLE20
         XLebOqfcNdD0mIh0z+lHRfBG9IiRokzNpzUq2K3QxRcfsEqJQdtOIdl8QJJA46XjgrPn
         xvYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=fS1GTc4qQr08D2pBNlso0T9n5yrSUpTEvLBSuo5WMHA=;
        fh=rhpF2klUmedkQ2XtfKYxtmVwZzEP0yJovDOpsJV/sVU=;
        b=HwVpuJ0ztDDgPet+kOT1aJvCXywVtzYNN04TluXW6rqAAKh5qy79e75t3LaygL7sir
         US21nNku/4Crhnr3Cr2yq+AzhUQS6G1wlMqMJp8khJuVEUSHHaGETsGVdaPbjegC5nk5
         Amd3TIXCavqbT4edgt2y10kJ6QOguEhg8rLekBvrlmpuVFGF/Rw9AvrK2WyNivr1K9fh
         1IrGGRUKrXKOd/VJ/8C/V+9Q3ZMTeOhRomovq8ZgOGctzErkMt6XeFVmacgOL3AI4Y5u
         6Tlxr5icmVDzxWBPzDKIg4T5Z086x7F/pPXJEXOGrXXH2r4Os8/fyHCaGyznJxHWebfQ
         MarQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=uMPIasZu;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755109176; x=1755713976; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=fS1GTc4qQr08D2pBNlso0T9n5yrSUpTEvLBSuo5WMHA=;
        b=hNuT7wCAMYBEzYcCuWqMnBCy9RUAfL41hwHx6F8aba8Tj+5rcxi9SSL7SZ98rjZR6O
         B+4ghKChVdQMbzDJHWIALSz7kMjbjHsuITVIT9SoJeRelE2rK1JFZTIZDat4iO8RcVVz
         IKRu94bp9v7f5e7R+7+fIfg4phy6ew7KowoVw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755109176; x=1755713976;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fS1GTc4qQr08D2pBNlso0T9n5yrSUpTEvLBSuo5WMHA=;
        b=bNycsYLhi4ksw1wWTpqKe+zOsG81JI3RmEJJIjKZ7VBpI/u+YEG2YqWpwq/fWI9jnA
         BAH/Lpi/N130TCqHx30aknyATCeNJ8T0emQ9XFsfiQe3anggUGGCADTFBWqaM+j+Ftio
         H0RwTCN2fhm5QmuzeQ9owz6zFfUhkolqbKDW9H8lrAVM8GXU5EmrufQpSr0gi+DT53Z8
         7uhEyOuIXq+F9It3iCVjIiZyOGMBxx8DnqzYBZRFfAAPNWRm5mbQORfDjodNheDfAurV
         DXukjqZ/NMBENtYoKF+uHBdG04RKZgimjKNtD26oJAVSgthH+SbL7x36V3c1P4WNQoXL
         Bw/g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXIUbliRI+/6LqKUk30KMYAmFXzHyk2sLL5Wc1oeW5TZUi5bP/0aQIgW5i3EqX3rh1R8JQ3iw==@lfdr.de
X-Gm-Message-State: AOJu0YyWCsniRCEWo8XeMtucwk9l/7KDMSgJ2PQWGeJb7XyUHnPK4GxZ
	zCK6dx0s4oOW7AlKeMSwb8hOspXeKqp+qV5HCXw2MQxahhztBzxJhGUJxRa5Oj8YwYo=
X-Google-Smtp-Source: AGHT+IEZTq8ZxF9/OrIDXBKSib8vbRQV0Qp4bjU7p0ozgTrNRodco7NiIPsX1vGC04/kWl8nyV3hrA==
X-Received: by 2002:a05:6214:621:b0:709:f328:8ec5 with SMTP id 6a1803df08f44-70af5eb57e9mr3814936d6.39.1755109176022;
        Wed, 13 Aug 2025 11:19:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZcw91I/S8XPys8d2gpL4hGtQoW9/rhBTQbrN+eCRLcW0A==
Received: by 2002:a05:6214:cc7:b0:6fa:fb65:95dc with SMTP id
 6a1803df08f44-70aafed50dbls2111276d6.1.-pod-prod-01-us; Wed, 13 Aug 2025
 11:19:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWKdG1xRha2/YM431Lf1uwKFnl2Q2gYMwByNnLLs6t+gWxHIiQaRETqyyfR8jGfGp4KradrBlwAcrbYaQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:29d3:b0:7e0:892b:e447 with SMTP id af79cd13be357-7e87031ad5amr50389785a.22.1755109174787;
        Wed, 13 Aug 2025 11:19:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755109174; cv=none;
        d=google.com; s=arc-20240605;
        b=auk3YRmV5MFVmXhiqWn97RfA9bsPn3PFCrqRznGH9GBw1uBcqV0giHOvV7dfdhC3Fn
         f5Horbev3KWh5FhteEAgT09CFvyuCbqIS218EbYhHRWsq5UJBshjB82aRB1Msifk9v7h
         uYPwIKG7FdCjeN7ctB0MBGjAVS9PN52pG2kv3+QPZfyLZGhroa+HG1L/5V5qoP1P0BTp
         mfaQIs3gYr7HsnbbRgzx+53tm7IsQ8IB5PaeuJJcXX7GbZ5iiHrp8+RqmvW+e52/1O98
         2VQ4Ch6LwzGUebCw0fZf8PHqdex/ZtY2JSXWgHZek11e/oLnSvbZJSAet6e19muQd/yx
         doEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=+EddfMazfmOOVzuGouJhvs/WQquMhL7Ov9e7tsnnf4w=;
        fh=tzAlwYe+IA8RzlD9K7I4wads+yv0L19f8zX/leeLdK8=;
        b=IKWHDjrUTLqubg4S2mDTuWEnuVXHfaEQLlLHC5pZg0rt/SPx7yMxx4RtHdrtw2jMH+
         +Aw6mIPHZ0NIzxKu+5OPFD55Xg9/+ySUY76kFcW6+97itLWF3lCxLAlp85oh9wSidfQY
         yIsWaWEBlLywVZCysEgMMRT2lNm7w9wrw3FXF1OP0mkSsNAL9iGba4qnkk/Ax0jBFEaA
         ogkWZwAVsF4T7Tl7aTAbasKpdJauqmynHtAf0YcXOwIIBNYZgHXCbimx9tMDdH6ynchd
         oMG1C2GxD47fDI1RdHjspaT0WkgvRfIem5+AQCi+pR+nKW/EbuZfGzQxVALSHz//osbw
         5rew==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=uMPIasZu;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7e6973c24f7sor2220896385a.5.2025.08.13.11.19.34
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 13 Aug 2025 11:19:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWXZ0JIQMT/yEqk++hSpIGOa/y5gRI4hqlzlJiIAnLN5JPt0KgA+OClQ5Off+OAIcy/J54q4VvgaDvrQA==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncsEBhR/ug8aAYPulMVzPi+MBF8znlNFMJxSKqPxDIGYUSsc/jb6t4UYI35boMG
	76oGkUhzf578IF+Hff7ZNgxkoYocemabEvVG3MmZO2RSkNU4a6VDrWX2sxSI1zDXPlJ/9S7La2N
	0PFaHw/SrSrD0VrhrrCFNrjmzG4VZNidBYyl6tTLMwN6u99FRbuMkxe0UDowJkf//rN0Gr5Jl51
	3chCCSr2fk+wEBEw1TOaPMHWKtRx4zGMmLX9f0kWWGv6le2tg47lXh7AZc8Y6abN1r2WWBIYLmo
	DLen4Y+HVJumq1zw/byYfoi8dWTTnHISK+YUzKzE7yAMDVXpFBJvTvRguclftiudAs78L0y0VQ+
	MZrtRt2DbvDAaUN4G6lc+uBzQtRLM4R8teCUKfK2nvQmjd4CApQSduxXQHiztsaSnYg==
X-Received: by 2002:a05:6214:2307:b0:707:6c5:55ad with SMTP id 6a1803df08f44-70af5c0002emr4387246d6.12.1755109174206;
        Wed, 13 Aug 2025 11:19:34 -0700 (PDT)
Received: from rowland.harvard.edu ([2607:fb60:1011:2006:349c:f507:d5eb:5d9e])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70af5c1df31sm1233556d6.81.2025.08.13.11.19.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 11:19:33 -0700 (PDT)
Date: Wed, 13 Aug 2025 14:19:30 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Zenm Chen <zenmchen@gmail.com>
Cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, pkshih@realtek.com,
	rtl8821cerfe2@gmail.com, stable@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, usbwifi2024@gmail.com
Subject: Re: [usb-storage] Re: [PATCH] USB: storage: Ignore driver CD mode for
 Realtek multi-mode Wi-Fi dongles
Message-ID: <03d4c721-f96d-4ace-b01e-c7adef150209@rowland.harvard.edu>
References: <ff043574-e479-4a56-86a4-feaa35877d1a@rowland.harvard.edu>
 <20250813175313.2585-1-zenmchen@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250813175313.2585-1-zenmchen@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=uMPIasZu;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Thu, Aug 14, 2025 at 01:53:12AM +0800, Zenm Chen wrote:
> Alan Stern <stern@rowland.harvard.edu> =E6=96=BC 2025=E5=B9=B48=E6=9C=881=
4=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=8812:58=E5=AF=AB=E9=81=93=EF=
=BC=9A
> >
> > On Thu, Aug 14, 2025 at 12:24:15AM +0800, Zenm Chen wrote:
> > > Many Realtek USB Wi-Fi dongles released in recent years have two mode=
s:
> > > one is driver CD mode which has Windows driver onboard, another one i=
s
> > > Wi-Fi mode. Add the US_FL_IGNORE_DEVICE quirk for these multi-mode de=
vices.
> > > Otherwise, usb_modeswitch may fail to switch them to Wi-Fi mode.
> >
> > There are several other entries like this already in the unusual_devs.h
> > file.  But I wonder if we really still need them.  Shouldn't the
> > usb_modeswitch program be smart enough by now to know how to handle
> > these things?
>=20
> Hi Alan,
>=20
> Thanks for your review and reply.
>=20
> Without this patch applied, usb_modeswitch cannot switch my Mercury MW310=
UH
> into Wi-Fi mode [1].

Don't post a link to a video; it's not very helpful.  Instead, copy the=20
output from the usb_modeswitch program and include it in an email=20
message.

> I also ran into a similar problem like [2] with D-Link
> AX9U, so I believe this patch is needed.

Maybe it is and maybe not.  It depends on where the underlying problem=20
is.  If the problem is in the device then yes, the patch probably is=20
needed.  But if the problem is in usb_modeswitch then the patch probably=20
is not needed.

> > In theory, someone might want to access the Windows driver on the
> > emulated CD.  With this quirk, they wouldn't be able to.
> >
>=20
> Actually an emulated CD doesn't appear when I insert these 2 Wi-Fi dongle=
s into
> my Linux PC, so users cannot access that Windows driver even if this patc=
h is not=20
> applied.

What does happen when you insert the WiFi dongle?  That is, what=20
messages appear in the dmesg log?

Also, can you collect a usbmon trace showing what happens when the=20
dongle is plugged in?

Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/03d4c721-f96d-4ace-b01e-c7adef150209%40rowland.=
harvard.edu.
