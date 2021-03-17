Return-Path: <usb-storage+bncBC5PNDUIVUPBBWHGZCBAMGQEREFD2IQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9A833F607
	for <lists+usb-storage@lfdr.de>; Wed, 17 Mar 2021 17:50:36 +0100 (CET)
Received: by mail-qk1-x746.google.com with SMTP id c1sf29857200qke.8
        for <lists+usb-storage@lfdr.de>; Wed, 17 Mar 2021 09:50:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615999835; cv=pass;
        d=google.com; s=arc-20160816;
        b=sfYSKbr57q1jPOtMv5POeHowTmf7nqPNBa+0qYC/4iQe1AQlQ1xKYZM+h0ml76jiD1
         5XfYd7QDR7PpeRnQpwe5R9Z01aMp17tiXS2qrzgz+f49aHrd+oCO6JK0Ex8DjIVYc+37
         ZQ7yv3mAX2MzBbrzoIjupHZP/XlJillww2/4tx2dxKU7WJJhOxxkEkHQlrqZc9g3TxYb
         Pb7CWFfZ6UD5obMJcYWb2w3pVlSO+n7dq3EHWc6QAFiqi+tMqnIWwcCZtBUUg/S7EKwi
         7dUAruhuHQukXza2Mk0906MbgPVwEI8nxilfIn9jpPIHphsbkkhx+pyybCGgch6NeKU0
         scPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XXwsNvr6C/zYo7PQmy4dbRZ+uSxU1LFO+HWdsFv4dYc=;
        b=wBBywk0zn4+KPODsPUWK5lPaeQlom0BMUbfJPuO9kE/7FylZ2JKWIb6Tta2t7Cnef3
         /NaJvKDuNKlvZL4JJ4vnZXSmh9AjA7b+ALiDQoAjdv28jrXckTSICDYTCE9Zx6xVHICn
         2XAABT1I9EJSuNNpq6Umh6bje2zdNVAGoZsqK6EfWAKF+YIcd1HoEjpGhP/79bW5lvov
         8Igj6BFuUrr5owYX2sPeLrInQXzAaT4hiQcTTsSnnObEVIMhEDgUeIiLIIwwHt0/Pnej
         mpf++SRFvQn5fcHXs6TtqBCVP5yg3ZXt8WFKF4P9ifS5bx0JvVz2gzIG8KCTbdZKJ43T
         X4ug==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of lennart@poettering.net designates 2a01:238:43ed:c300:10c3:bcf3:3266:da74 as permitted sender) smtp.mailfrom=lennart@poettering.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XXwsNvr6C/zYo7PQmy4dbRZ+uSxU1LFO+HWdsFv4dYc=;
        b=fhZVsyPbtIzE/0qEW0t/iq9gTzVvkskDkqkoKnrv+6t1/MtPGhbpNyr2hKaExTS0Xd
         TPJ8KqnR+2ZrJ1mw4T5zl9ZZVItZe13lc1HjgOpmIQXNGA4tKxNYyAfat/0VfTgtU6+H
         nm3gPXj2HLhmdxM6S3HmtvTuqL8Bz9h1uPQa8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XXwsNvr6C/zYo7PQmy4dbRZ+uSxU1LFO+HWdsFv4dYc=;
        b=iGPd+LW8g63sY2/c2OXETE6ZMTzunSnExu6upTLX7OfbuBJRL/SzWVgBduwMdoFfQ9
         GowTkn5YhCKPOSrW9Kd2/00uKmjOtqeRBLlfmHrKQrVuLkmKMCvjyIkA/lzhYrdZ5Adi
         xoiHVB1i8Gq0ryrt9cRHzXBSpnTwRbEL9jInfYO9qM0XrXduHrqzt93/WVK1b8EN0KI7
         Anu+bHZZjjJ6gF7F4VtUvLe10GQ56jdrzDcMGuR+A9dVfXvaY58frwD37bBB2yKD9tku
         RgaC/CHU7bWQwswOlwKvWVbdWxIa29UMiTA5W7G3yodWZCGUlBGD5kHBp+1cebfpyJnr
         4dLw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532ZkuNt1CUUcXf029tYXI0E/OjmaAR2bn3WacEZUf+jNaVT3vod
	2MsPICnttpJVRQwxsffhyRbu9g==
X-Google-Smtp-Source: ABdhPJz2Nr960C1W1JrfLmVZf8sZff57/KjjA9Ta7BebR1ChsfPnMwpx6bONTxD85eOf7h1c3rcobw==
X-Received: by 2002:a37:6294:: with SMTP id w142mr42280qkb.255.1615999833219;
        Wed, 17 Mar 2021 09:50:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:38c7:: with SMTP id k65ls7352094qte.1.gmail; Wed, 17 Mar
 2021 09:50:32 -0700 (PDT)
X-Received: by 2002:aed:2746:: with SMTP id n64mr4896528qtd.370.1615999832491;
        Wed, 17 Mar 2021 09:50:32 -0700 (PDT)
Received: by 2002:a37:7606:0:b029:27c:7058:d7d0 with SMTP id r6-20020a3776060000b029027c7058d7d0msqkc;
        Wed, 17 Mar 2021 09:47:08 -0700 (PDT)
X-Received: by 2002:a05:6402:168c:: with SMTP id a12mr43805566edv.344.1615999627124;
        Wed, 17 Mar 2021 09:47:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615999627; cv=none;
        d=google.com; s=arc-20160816;
        b=mRlwLq0I70BYxRoXKyOYT1Kmovlsj5rJobm66OA1WfdVn17T6xXZyqyBl5hWtQpjZL
         vvUC4OndI6QO8t7uNP/seB80SOOYrLJzGFnjTRoXvMyiULT5dUyQl6KbCj03ipK87Q9I
         d+ub5IhvpNPgAPzlV+EA5lK4r3rfDlvKAYHEv83fnxtzr9r0pf+o2JlYxeZApefGiZwq
         B40xhPSxThMpbYN4TVv43aYcCONTN35hk9Tl6yTpN4SwxmMsvHp1cPurWv6iTVVLyfK3
         Sg5gIzpgVMG953CL3aFSodEB6p5PT/NW3iwj/F/Yq5RRA/EL5DiN9idSC8UPbGCOd0pY
         XIPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=93hc1IA3OI9zaIxvLAHyneZgos04QyOdTnSDGq9/dqQ=;
        b=jFvPWTnRLfPsTlcb5DTsTQs5H4ykNBbAy/f99MJmOSH7I2K6hjXzkIsolAVsX8BGHU
         LUNVJ6i+lEBraAUgObFJVVqwjAN4y4mim8zoZ94Wo6VR569ZY1k5nxSFsZZlkcu9kOyw
         hYhIqx2Bk9IWk7Jh+C/aFNtDL9qai4N2jKkL1ZKA5a/eHhM5AKyGWnTHNe2B8GxwDlpQ
         SlB/n4LuE1vMKO44mOhNAbg0IoYt5syydLS2+mp9Bn6NUmdIgR5zf2qwZFV9xG9VWyhC
         WH1Y0tzXPEt8LKRZ0YLuvlRDpWkfUmyHlexbsQe4+2xE/wgs6J55p58tMeS6GkypKFdV
         sn0A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of lennart@poettering.net designates 2a01:238:43ed:c300:10c3:bcf3:3266:da74 as permitted sender) smtp.mailfrom=lennart@poettering.net
Received: from gardel.0pointer.net (gardel.0pointer.net. [2a01:238:43ed:c300:10c3:bcf3:3266:da74])
        by mx.google.com with ESMTPS id h17si17215840edr.331.2021.03.17.09.47.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Mar 2021 09:47:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lennart@poettering.net designates 2a01:238:43ed:c300:10c3:bcf3:3266:da74 as permitted sender) client-ip=2a01:238:43ed:c300:10c3:bcf3:3266:da74;
Received: from gardel-login.0pointer.net (gardel-mail [85.214.157.71])
	by gardel.0pointer.net (Postfix) with ESMTP id 5093DE806B8;
	Wed, 17 Mar 2021 17:47:06 +0100 (CET)
Received: by gardel-login.0pointer.net (Postfix, from userid 1000)
	id C4A61160DCA; Wed, 17 Mar 2021 17:47:05 +0100 (CET)
Date: Wed, 17 Mar 2021 17:47:05 +0100
From: Lennart Poettering <lennart@poettering.net>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Hans de Goede <hdegoede@redhat.com>,
	usb-storage@lists.one-eyed-alien.net,
	Matthias Schwarzott <zzam@gentoo.org>, linux-usb@vger.kernel.org,
	systemd-devel@lists.freedesktop.org, hirofumi@mail.parknet.co.jp
Subject: Re: [systemd-devel] [usb-storage] Re: Amazon Kindle disconnect after
 Synchronize Cache
Message-ID: <YFIyidaZZmDoTevB@gardel-login>
References: <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
 <20210316170433.GD448722@rowland.harvard.edu>
 <1d9f059e-8b21-0895-9a50-39b6b1a5cc5c@redhat.com>
 <20210317151746.GB488655@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210317151746.GB488655@rowland.harvard.edu>
X-Original-Sender: lennart@poettering.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of lennart@poettering.net designates 2a01:238:43ed:c300:10c3:bcf3:3266:da74
 as permitted sender) smtp.mailfrom=lennart@poettering.net
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

On Mi, 17.03.21 11:17, Alan Stern (stern@rowland.harvard.edu) wrote:

> On Wed, Mar 17, 2021 at 01:21:50PM +0100, Hans de Goede wrote:
> > Hi,
> >
> > On 3/16/21 6:04 PM, Alan Stern wrote:
> > > I think it would be mildly better, but not a whole lot.  Since the
> > > Kindle describes itself as having removable media, the kernel normally
> > > probes it periodically to make sure the media remains present.  The
> > > default probing interval is 2 seconds.  Reducing it to 0.9 seconds
> > > doesn't represent an exorbitant additional load IMO -- especially since
> > > Kindles don't tend to spend huge amounts of time connected to computers.
> >
> > Ah, I did not know that the default polling interval was that low(ish),
> > given that the default indeed is already that low, then changing it to
> > 0.8 seconds would not be a big change.  And we probably have a lot of
> > lower hanging fruit for unnecessary wakeups then that.
>
> So we need to make a decision: Should the patch be merged, or should we
> punt the issue to userspace tools?
>
> On the plus side, the patch is rather small and non-invasive (although
> it does allocate the last remaining bit in the 32-bit fflags field).
> There's also the advantage of sending the extra command only when it is
> needed, as opposed to increasing the overall frequency of TUR polling.
>
> Any opinions?

I'd argue that this should be done in the kernel.

IIUC the issue can actually lead to data corruption, no? i.e. some
program writes 25 different files to different places on such an fs,
then calls fsync() on one of them but not the others. Then quite
possibly the fsync() will trigger a device disconnect sooner or later
at which point the one file surely hit the disk, but there's no
guarantee for the other 24, they might remain cached in memory and are
never written out.

I'd say quirks that are necessary to avoid data corruption should
better be done in the kernel and udev's hwdb stuff is only for stuff
that "fills in gaps", i.e. adds additional tweaks that make things
prettier, cleaner, nicer, more efficient but not things that make the
basic things work, and data integrity sounds pretty basic to me.

Or to give a counter example: the device advertises it can do media
change, but actually cannot, right, it's not a floppy drive or cdrom
driver after all? maybe hwdb would thus actually be the place for the
opposite of the suggested fix: turn off the media change polling to
reduce needless wakeups.

I mean, I'd be more open to this if this was a frequent thing and the
database for devices like this was just tooo large for the kernel to
carry, but that's not the case here either: it's two devices afaik,
and such an issue wasn't seen elswhere.

Lennart

--
Lennart Poettering, Berlin

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YFIyidaZZmDoTevB%40gardel-login.
