Return-Path: <usb-storage+bncBC6MFJWO34DBBQ4SZSBAMGQEXGVTXYA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F4E340095
	for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 09:03:17 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id ev19sf12364520qvb.7
        for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 01:03:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616054595; cv=pass;
        d=google.com; s=arc-20160816;
        b=VfxK059qefF2v2OcKG/8N1ZWgfGroOHAAA74iAz2ByB2xMQogRAQu+C8k+gZdbjG93
         l/Gq/HYVdsN3hUogWaJ/v5ipcfbnqtLLUhuWS8sJSiExl+I4RnIdpbvgaVFouJrSwGKD
         c6GLRFUDBvFBzMXXpjQiR0XsPyPRaXkkIQBucIwaVGNj19NFa/fA3zjtrItgNJJJxpgC
         mpSgFM9cTVaBxj7CV6UXicPpatpQHHfto9EKJtcjo1tke1Fh44V3nratD8RwJNc6QHqh
         /TjqlcsVUc4PEqFdu1N27XmoHLsUJ3ucOft2jjL23QiXuj2SNRRpV8eZ/hRCb64azyzU
         Kovw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition
         :content-transfer-encoding:mime-version:in-reply-to:references
         :subject:cc:to:from:date:message-id:sender:dkim-signature;
        bh=q2BZ6qaCsLw1RCFRvW1vXzmcyBftuhDFqtUJWM3AeI0=;
        b=zRJ/+IYY5D5DecidhoKa0+0QTwlu85xyqtgQOIuTqduZAanpaqACVJbx7M4gt6NEFm
         DClLaOX1Yo6s13YYKouHgqVBlP4fPYMVE8KlzEV6ksfj8s4+++s15h8OeIZhYZnyswMO
         IXcyGBRmuoCSbmPXy/9bWBLGDp1sE+kofalkRDh2j0Ahq2CcFdcv3VBE7NtKmSBX2+e2
         D1lrroqO2MhKM0jEuXKHErlckIR/j0/VGzzGLemkitapJ4+qLHV8W8RPhHe0AahxggZW
         yjpxCLAK5iYgdi9Pahm2nDAaVAC1UwVZ6RhkU+Be+ijID4qi0amPFWtYNl8N3G6UP+BU
         BmbQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-transfer-encoding:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q2BZ6qaCsLw1RCFRvW1vXzmcyBftuhDFqtUJWM3AeI0=;
        b=EtaAvZKZPnjzhv3Po2QMhe/vSJW4vITSSgxOmsUVxuhzR6cGh4kzGyh6QdZklJZYh0
         Jk/cPKx3mHpyDWHbG/qcl8bV9+zeFbg9xnV4Wyz4+po9xbHOTWxVwnYS8ECkgsEAdwUT
         jqD/rxiz4d/d5ntnAGzTFFcLQ19O8OG5+Ip7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-transfer-encoding
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q2BZ6qaCsLw1RCFRvW1vXzmcyBftuhDFqtUJWM3AeI0=;
        b=omWY7lejwkh27AR1YCChC9ROL8n1zgAQUqNgMipjWO+5SBJFa0KMZiYGg+AZajqeJ0
         H+HzSG7vtxcxw3X1ldm98HTtmyo8P3H1/Or2MYdYgr/KF4pSdfu/OULFayDbfSHyZpmr
         we9nrKeE8ismXvIkTSCoFKYv/HrtrfWu0cnveH/Gi6/h+1QIy0/NAm0s7kaj3WWzeAlA
         4KwHBln0N5iQ3IiQJnYyksA3Wr7Zpf9yGBVeviuqX1EjWR8262MhU3Naa4Wv4APoYVaV
         YNBtgPbSj8PLrVA+v7OmUKz5w20nQZXzePAyDU8GsYgKzKuyAxSfaeaG43wvEkxqDUK9
         zm3A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533IBQ8LyktgQ+s9ymfKrj2Tcl55Jja+PjM0titVXuSzLHmKgSaW
	W8F+ScOOWu8jPVVH1A0xHtGt6w==
X-Google-Smtp-Source: ABdhPJx84UuiEeFIouOctvv9cHseDd/2sd8Dv6P7mjgiqSKs2bALK4PyRnQboSEZs3OGTCmBtv30gA==
X-Received: by 2002:a05:620a:450f:: with SMTP id t15mr3031934qkp.323.1616054595665;
        Thu, 18 Mar 2021 01:03:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:5501:: with SMTP id az1ls359124qvb.11.gmail; Thu, 18 Mar
 2021 01:03:15 -0700 (PDT)
X-Received: by 2002:ad4:5851:: with SMTP id de17mr3143225qvb.6.1616054594935;
        Thu, 18 Mar 2021 01:03:14 -0700 (PDT)
Received: by 2002:a37:a60c:0:b029:271:6c16:8ab7 with SMTP id p12-20020a37a60c0000b02902716c168ab7msqke;
        Thu, 18 Mar 2021 00:04:48 -0700 (PDT)
X-Received: by 2002:a5d:52c2:: with SMTP id r2mr8360495wrv.40.1616051088328;
        Thu, 18 Mar 2021 00:04:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616051088; cv=none;
        d=google.com; s=arc-20160816;
        b=Mpmd77Dog652omX0gZVjeU3abe2TnE/CwLWlWTQCd//veeqw2flvEnXdNaOnWWVHod
         f/iqGe8/mlC0ckbJ0NaOR1IS3fbCMuQAoc509Rv4NiLg5dVyBWrA3J6BZR9+DB2hmWD4
         2CJuu2wD2Jnkw34FpStfoU16e4hnROhtuD9d8PdcvgxCMwu3ekEs/K+AYz2oqKN5xSGc
         c9Wq3NkTL1rZ5DbXwm87aAFnBAhuGS2cIgVJANquylrDtfkQOOdled9u6WatBz9vdjNG
         zt8lH8yMb9GrOJtIDy8E8o/C/Y6FKg9LDK6UjurijZ5U9j6ClCbK6kMZESkqpZnDGxLH
         oBGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=OTZZtw3CEZEO1BevZlY4NIj83PJ0dWH+jcItfb08r/Q=;
        b=h9S4Us54bsCPL21e1aaxx42/+gweB6YdoyDRy03KIFUSCUUMeh9XW7gjvHPX9KpUfX
         4YKg9UUCEPHxaY/yzkOa2Rk7oQ9Ijf7R242E8bLH59AcCPuLB+MYBA10pR/t553dbQGb
         kpDzOHZJ/Tlk+UvRt3cvgJ0zIS3aA34RNzeq8Z2mpxVIG1oOiPvWiTzKSL9XwLfVuGZ5
         vfqmbU1RNSFxeVbTrcPCzOXcSResR6VqUn33FYjzkAaZXRcUDlemCHstjTYy7eowdsfm
         ULmU/NsercS9PwxAASnryITsqxefwspROJmENcWJsW30bnHv2/oRGeqXg7iGa4PJzdQ2
         a1Lg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx2.uni-regensburg.de (mx2.uni-regensburg.de. [2001:638:a05:137:165:0:3:bdf8])
        by mx.google.com with ESMTPS id c63si1260981wmf.39.2021.03.18.00.04.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Mar 2021 00:04:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) client-ip=2001:638:a05:137:165:0:3:bdf8;
Received: from mx2.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id BAE446000059
	for <usb-storage@lists.one-eyed-alien.net>; Thu, 18 Mar 2021 08:04:47 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx2.uni-regensburg.de (Postfix) with ESMTP id 23DD0600004D
	for <usb-storage@lists.one-eyed-alien.net>; Thu, 18 Mar 2021 08:04:45 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 18 Mar 2021 08:04:44 +0100
Message-Id: <6052FB8B020000A10003FE28@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Thu, 18 Mar 2021 08:04:43 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: <zzam@gentoo.org>,<hdegoede@redhat.com>,
 <stern@rowland.harvard.edu>
Cc: "systemd-devel@lists.freedesktop.org" <systemd-devel@lists.freedesktop.org>,
 <usb-storage@lists.one-eyed-alien.net>,<hirofumi@mail.parknet.co.jp>,
 <linux-usb@vger.kernel.org>
Subject: Antw: [EXT] Re: [systemd-devel] [usb-storage] Re: Amazon Kindle
 disconnect after Synchronize Cache
References: <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
 <20210316170433.GD448722@rowland.harvard.edu>
 <1d9f059e-8b21-0895-9a50-39b6b1a5cc5c@redhat.com>
 <20210317151746.GB488655@rowland.harvard.edu>
 <5f8c0755-0884-f505-c4e8-3a5e89001d58@gentoo.org>
 <C63C44570200006665972EEF@gwsmtp.uni-regensburg.de>
 <B960C12A020000A667ECE9F9@gwsmtp.uni-regensburg.de>
 <B72C58530200001565972EEF@gwsmtp.uni-regensburg.de>
 <0F2319EB020000F567ECE9F9@gwsmtp.uni-regensburg.de>
 <DE3F57520200009E65972EEF@gwsmtp.uni-regensburg.de>
 <474C42CD02000091AE14D9EC@gwsmtp.uni-regensburg.de>
In-Reply-To: <474C42CD02000091AE14D9EC@gwsmtp.uni-regensburg.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8
 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Matthias Schwarzott <zzam@gentoo.org> schrieb am 17.03.2021 um 18:56 in
Nachricht <5f8c0755-0884-f505-c4e8-3a5e89001d58@gentoo.org>:
> Am 17.03.21 um 16:17 schrieb Alan Stern:
>> On Wed, Mar 17, 2021 at 01:21:50PM +0100, Hans de Goede wrote:
>>> Hi,
>>>
>>> On 3/16/21 6:04 PM, Alan Stern wrote:
>>>> I think it would be mildly better, but not a whole lot.  Since the
>>>> Kindle describes itself as having removable media, the kernel normally
>>>> probes it periodically to make sure the media remains present.  The
>>>> default probing interval is 2 seconds.  Reducing it to 0.9 seconds
>>>> doesn't represent an exorbitant additional load IMO =E2=80=91=E2=80=91=
 especially since
>>>> Kindles don't tend to spend huge amounts of time connected to computer=
s.
>>>
>>> Ah, I did not know that the default polling interval was that low(ish),
>>> given that the default indeed is already that low, then changing it to
>>> 0.8 seconds would not be a big change.  And we probably have a lot of
>>> lower hanging fruit for unnecessary wakeups then that.
>>=20
>> So we need to make a decision: Should the patch be merged, or should we
>> punt the issue to userspace tools?
>>=20
>> On the plus side, the patch is rather small and non=E2=80=91invasive (al=
though
>> it does allocate the last remaining bit in the 32=E2=80=91bit fflags fie=
ld).
>> There's also the advantage of sending the extra command only when it is
>> needed, as opposed to increasing the overall frequency of TUR polling.
>>=20
>> Any opinions?
>=20
> I would vote to do in kernel as that is a cleaner solution:
>=20
> 1. It will work out of the box.

...once you have the right kernel

> 2. It only sends one extra command when needed.
> 3. It makes the block=E2=80=91device not break if user=E2=80=91space adju=
sts the poll=20
> interval to higher values.
>=20
> Matthias
> _______________________________________________
> systemd=E2=80=91devel mailing list
> systemd=E2=80=91devel@lists.freedesktop.org=20
> https://lists.freedesktop.org/mailman/listinfo/systemd=E2=80=91devel=20



--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/6052FB8B020000A10003FE28%40gwsmtp.un=
i-regensburg.de.
