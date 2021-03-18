Return-Path: <usb-storage+bncBDRLB3EU6IJRBO7WZWBAMGQEWXAZY6A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 1872C3409AD
	for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 17:09:33 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d11sf27605447qth.3
        for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 09:09:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616083772; cv=pass;
        d=google.com; s=arc-20160816;
        b=YCNIuyfGfzvxo1z3vLJmrolLEJk/Me3xPOYJxOV06jLpXrf2G3nLOtNHNsDveH8Muv
         0fbINO/UXyNE+gc3pFs2oNbHoRQLUyqdOMD9CTJ0uYNo08iBRf4hLxzZExcFDP0M57il
         W6EWIJH2W7CkdxfZD/dWwGZPd0jSojy03mDkVf7G60rv422xpgPGG0M/oEW7UK3FfuZQ
         jgg1OkRmYdsycDqGORS3gCxzqfKYSpv3/1NH6flP3/ahu40/EySkNq8LS75lKI+UKbh7
         p1BCgSgzNh00KyyVmrcv5NnSKgJRE8FzOO5b7gQhDecA+H6XAy5H/U1LlicE7dGSsrk/
         0HbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-filter:sender
         :dkim-signature;
        bh=Jo9I0yUtnMNySOlskVwfQrjCSafvVhPBOsbt7cqE9z8=;
        b=1Jol75DPrSlTmoFoLX2wTzDymC7qUJmCyHz6vebeRpAQ9JX7yJ2Kv17P1U0RXxmuDu
         4yvyByM8mmLe4OZ7QE69xk92a9WzOQXgAWVcNrXIMzAimIffMon8xG8m1wRku2x9uHIk
         ThszT/D9mr/KnSjL876lqHAHiJwb+5iW48RMW+g3sm6kKDO0mLZ+A3qYgGWVYkSUYy1i
         jP/VD3YqTTvUWskYLz/z1ROoNTFhxXLhDhaIc9+mh3DRCCPP5haQLo1LxuMbUr0VJ7LL
         vTJP4hh0yFpgPKHbL4QwkReJ7JoilyW1r0FmInCFT1EhlB8TBIVA9YkCfFrx1fp2BJx3
         h3/g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@pipebreaker.pl header.s=default header.b=uX94CdH+;
       spf=neutral (google.com: 185.244.97.28 is neither permitted nor denied by best guess record for domain of zdzichu@mother.pipebreaker.pl) smtp.mailfrom=zdzichu@mother.pipebreaker.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:dkim-filter:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jo9I0yUtnMNySOlskVwfQrjCSafvVhPBOsbt7cqE9z8=;
        b=HVY7PRaUdC8IWelilku7klmwtsML57jvx5NThvOT5fAXxqaKhp2dEcdu0zsX8DzMu1
         tC8wINfaMakPMM/37d7kSNIfOhjxz2wokNEpQKrjlegWQMZcaxSdrZnWnmKjU1tRvjGw
         jCMzJWNIorF9kope7yA/GGTuJNwmQyrY1BPu8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:from:to:cc:subject
         :message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jo9I0yUtnMNySOlskVwfQrjCSafvVhPBOsbt7cqE9z8=;
        b=DZ+3NgpbiD8aJNJJomlgFhtFudtNDd2KoDf2GDEYgeIYUzDc/+E0BCZkLiBmriDVq2
         cU44gv17fSC/tWw6pV8/Vjx9CGpvFpJ+Uf/Etjb+xb211oAZ0+sI6kKxkqdphgruj86p
         NbDcxSQikeD2/+Pc1N6DG+JXuT2vRdRbD3gsQ+FLVSUUkz6qrH1Cc53ggC0PbYR4nfxx
         zNRlPpztIOr1B63cKM9uGBcUag2qsHY0slfKeY5LKsPMj/Mt0zgp5zF4ZPU4ESNymXW9
         bLX2Omcj6hWSdCAoBD7qvg2H/6G8PXKugTOGh7GIlfB0dX0wESUcYTc19Owey4Ektuqu
         wm/A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531Is4hXU5aIYVAuVxI4TzsihsE97pttexnNbCWushR/B63++iLs
	4kREiFr8HhSx2aKKpRnv8dLaGg==
X-Google-Smtp-Source: ABdhPJzKgD+ydv8P+aMGzLNS1JoAaJnOZs3fCO8J7bf+7OGYTECCDGoYI5h0+aErcKcr0gjP45aqGg==
X-Received: by 2002:ac8:6690:: with SMTP id d16mr4537727qtp.312.1616083772002;
        Thu, 18 Mar 2021 09:09:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5710:: with SMTP id 16ls1058484qtw.10.gmail; Thu, 18 Mar
 2021 09:09:31 -0700 (PDT)
X-Received: by 2002:ac8:7fcc:: with SMTP id b12mr4314348qtk.343.1616083771576;
        Thu, 18 Mar 2021 09:09:31 -0700 (PDT)
Received: by 2002:a37:5c42:0:b029:25f:802a:e70f with SMTP id q63-20020a375c420000b029025f802ae70fmsqkb;
        Thu, 18 Mar 2021 06:50:16 -0700 (PDT)
X-Received: by 2002:a05:6512:3692:: with SMTP id d18mr5606684lfs.128.1616075415227;
        Thu, 18 Mar 2021 06:50:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616075415; cv=none;
        d=google.com; s=arc-20160816;
        b=CIohSch51oxrtgyp2KfiDeOAJamu4UY2QJ2xzFClGVdpbX/P0h/bjrBhZCo9xKeTxw
         zKR0EkNMNn39WfjCvpABI7Ae5qAUh6OrirrKm3LJ9OJMa8hUbW/NOOakZsD81i5c4/6P
         EdKdlxclZKwPV+4S35+p9jgVsW1715YKNVke1B6qbRJ0VYg863ZY87rnUJ0qtebd9Usq
         L7uipatWJW49X2YNUvFFMz+C8xbmrW0pdiyJ1rkqz/9xJb5LMj7VV3t6devd1GKQIt60
         073tuUS3yh2gQEnymy0xKQ005NRU+tQIK03KIIPwLYbduPmgORgUwP19YR24hUF/yLbL
         uQew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-filter;
        bh=kMaQH2PhFf81cu/s1yLMSzuoD6Xti8ZNHfUu76DTVdA=;
        b=E5qtowHGVCz6yBZEZBj6Dv5CkJDaye4qGTbra72mvDybDCrFlR1dajhVs6VmOqKvZF
         b9Jz90hRbF6Q7OncSrM/7ZghkWpLyilnRNqk8p33H4ws1GCPcwvPGo25qK/fx/RkB/ed
         XMl3CewGeBDnELHPoa8rVyjc/5CZfK3yMYzOJ9es3cAXIxrdtCs8e2vpOnklLyCDEg45
         AwezR2QJCL32bzlQxWzAGGhVNt06CjqceMRTAsAlI4glN6lfVUCYH/7u1LD0J1lt5x+A
         mQX3lPES4QeukXjeciy3PRQlD3o+4VRwDw+a8sdm3nEwZvkREdAky/M7/Xw9s+S1oJkm
         TyGg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@pipebreaker.pl header.s=default header.b=uX94CdH+;
       spf=neutral (google.com: 185.244.97.28 is neither permitted nor denied by best guess record for domain of zdzichu@mother.pipebreaker.pl) smtp.mailfrom=zdzichu@mother.pipebreaker.pl
Received: from mother.pipebreaker.pl (185-244-97-28-rev.logitus.pl. [185.244.97.28])
        by mx.google.com with ESMTPS id u28si1923437ljd.413.2021.03.18.06.50.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 06:50:15 -0700 (PDT)
Received-SPF: neutral (google.com: 185.244.97.28 is neither permitted nor denied by best guess record for domain of zdzichu@mother.pipebreaker.pl) client-ip=185.244.97.28;
Received: by mother.pipebreaker.pl (Postfix, from userid 1001)
	id E25D469A0618; Thu, 18 Mar 2021 14:50:13 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mother.pipebreaker.pl E25D469A0618
Date: Thu, 18 Mar 2021 14:50:13 +0100
From: Tomasz Torcz <tomek@pipebreaker.pl>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg KH <greg@kroah.com>, systemd-devel@lists.freedesktop.org,
	usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	Matthias Schwarzott <zzam@gentoo.org>, hirofumi@mail.parknet.co.jp,
	Mike Tsai <miketsai@amazon.com>
Subject: [usb-storage] Re: [systemd-devel] [PATCH] usb-storage: Add quirk to
 defeat Kindle's automatic unload
Message-ID: <YFNalS7Sl/l+zywM@mother.pipebreaker.pl>
References: <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
 <20210316170433.GD448722@rowland.harvard.edu>
 <1d9f059e-8b21-0895-9a50-39b6b1a5cc5c@redhat.com>
 <20210317151746.GB488655@rowland.harvard.edu>
 <5f8c0755-0884-f505-c4e8-3a5e89001d58@gentoo.org>
 <20210317190654.GA497856@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210317190654.GA497856@rowland.harvard.edu>
X-Original-Sender: tomek@pipebreaker.pl
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@pipebreaker.pl header.s=default header.b=uX94CdH+;
       spf=neutral (google.com: 185.244.97.28 is neither permitted nor denied
 by best guess record for domain of zdzichu@mother.pipebreaker.pl) smtp.mailfrom=zdzichu@mother.pipebreaker.pl
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

Dnia Wed, Mar 17, 2021 at 03:06:54PM -0400, Alan Stern napisa=C5=82(a):
> Matthias reports that the Amazon Kindle automatically removes its
> emulated media if it doesn't receive another SCSI command within about
> one second after a SYNCHRONIZE CACHE.  It does so even when the host
> has sent a PREVENT MEDIUM REMOVAL command.  The reason for this
> behavior isn't clear, although it's not hard to make some guesses.

  Could Kindle be fixed not to required such workaround? Is there a way
to open a bug with Amazon?

--=20
Tomasz Torcz                        Once you've read the dictionary,
@ttorcz:pipebreaker.pl              every other book is just a remix.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/YFNalS7Sl/l%2BzywM%40mother.pipebrea=
ker.pl.
