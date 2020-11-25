Return-Path: <usb-storage+bncBDXO746SYYBRBRME7D6QKGQEA7UFNLI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 6723A2C3993
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 08:05:43 +0100 (CET)
Received: by mail-pg1-x547.google.com with SMTP id b19sf1135072pgm.2
        for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 23:05:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606287942; cv=pass;
        d=google.com; s=arc-20160816;
        b=skUDrg+ApWX1iml/km6SN1WMEwmbuvSMxcZ2h9R7nfAgfPrwp6bFX1IhUU1iAVndWZ
         +muXwCwlhrz1UkV+SzYKZP4zcYoQ/F9AeKqzJenYBlCO3W0TAlbtxY2HjyqwqezcjOEv
         zxTG51+c+TtFvJIIE5VGFtb2N/Se6QGk/IsLTRhztgKJOV3DMFsjtaYhe4oy1lY8TxCS
         lBQkYexkSbMulID8277+bgMhClPx3//fg0nAviv4SUZ/Whq2/9eFU13SSyPUKADsY+GD
         yCWn5UEte+O9ctmkyxoigwSee9LfJHjHCH2mA8RUi2l0EKj3ji1qS4IO6UglWpvrolH4
         bP0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=9+oV+6pEqGcs2st9rGPm6y852DI91spHB7KPopFfyK4=;
        b=fBkkQJL/xQn+mbh5g2ma8mFU0lHYacOW73PdHcL4erxEcrItvB7FNz/Y1mkPXexjS3
         UoVa1OAdg3kP+ZqAHb3Zd56cimhUgKTjZ8uuaINfTS9fRcTcR2tDedJduqy0yQBI0lMv
         XzimiSZbwHH2M5hiXSNfY+uMyCTzlsiyUNfgy323DhwxIDvly0IhkCE5jsf3pvxDgLHa
         mJx4GbN69d9YLXe8skb4YPsGLlvgU8uyiK3o0uYT3t/zQMm9IjfpXxzyL14ZyIjNyxg2
         ZcR2cju67En24K7hRvcXs45bzM9ueym17lnRG8puzoR7MJN1I0HdrO9kV2qWEWwQiM2A
         l8wg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=DUjk2u5m;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=DUjk2u5m;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9+oV+6pEqGcs2st9rGPm6y852DI91spHB7KPopFfyK4=;
        b=HSRdEhUp+sclbYXMIjI121RCbePWZc8WL2QgZjFZ3sqUEmzWmxRYE7xuaay4UoyMBV
         YynUH/lQpggWy5WBSQwVZKbmJ2Oy10LSR2Ed8ObmPA/lJpmw+w2IdRKNIPnpv6h6Iq8D
         lVLcqq7mDMjuXO30kbsMs31RZ7GtyP/MHjdqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9+oV+6pEqGcs2st9rGPm6y852DI91spHB7KPopFfyK4=;
        b=MSnsQSKGjducniZgLdKNPExO6rNmCGURey6/M0h7Bff4C3W50UEvsfjDrvQnBlOUO1
         hH7yhv+wNYORJlO0GFaPcdwtKvpDFKFACgQt3rHwHKlNt5wYKhbTFE69xZuwdSOG0SBm
         oQ+ZrNIkLDw8B71CIRt2GsEBSDmlkhGZACsToO7C33VOe2jBJLtWb9IM0mvAMeSEESmD
         4bFirmWEdr31PVzzgTsM1PZqfuTaYf2aqOZRQ23VjJ+0/aQCufPu8xeE08YbDVUcjmsF
         6/9EV0lvYKShWQ710Z/+9OjyDYfDvb+tB6LNlkPXzuD9wsEm9U5NZCEsUjyh2+S+im8x
         rwEA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531JKUbBOoHXetFu65p0vrUnmZr1uBe9BIOfGTdmoAQ9BuS7wGus
	7+kFt5bnUicJBjA0WkIRhr4oow==
X-Google-Smtp-Source: ABdhPJzPE0V6b4IYDNJWh2XzJdhqh9gpVkj5+PrkW5pFqm16Qlmo+LXVPWzdPFX6d9PfuwnpsqzXjg==
X-Received: by 2002:a17:90a:e643:: with SMTP id ep3mr2574168pjb.211.1606287941778;
        Tue, 24 Nov 2020 23:05:41 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:b187:: with SMTP id s7ls659063plr.3.gmail; Tue, 24
 Nov 2020 23:05:41 -0800 (PST)
X-Received: by 2002:a17:90b:350a:: with SMTP id ls10mr2560738pjb.192.1606287941056;
        Tue, 24 Nov 2020 23:05:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606287941; cv=none;
        d=google.com; s=arc-20160816;
        b=moGKX0xQ5CUMa29y8xwP85nJXZTnQjhWDVVHzpT5fudWfM6B90LzCvkgae518jCIFu
         fXsfSlc9Vw2qVYff7rz7dxK36fzSIfiT73MvzT2Nyej8/7Ln6sKkkGlWtpnFW4OyNjEl
         7Pd1Yamenr2+tFtVX80mn6cjYZHnciQXAJ2es1PoGp3v9oOOra3hT55W0brkmEkPPdiA
         orbbe07LcOGjL0/h/5dumr7K5pou/51O9Ht0wOHx0mj9gKgnIufNh8+rkjqhI/Ysg1s7
         Emd4uNOg2tudarz30iJpSoY6boJccuHMkw919laWPtVDRRqElGGnI3wVEFFaX8SjEkIZ
         77tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=2vuzmiJEv6c7Xift+9H0wAIguEWFDwCQm8n3EAHRfP0=;
        b=ktdSq217wSqZaqYh5aPnlSCmuN0a8Be68do/yP/jGa2MKPmjSLubXb7jX3CtonBxWN
         uslgZtYPnwOkrsQVVj68XuBUvfRi3DcGl1/yJYOdeuXXzmgi8Lg0C+O1oYAdt8OddPG2
         jykJm0eKxb0/GAyHgo2l2XeGj0rkIs0DzYe8yVytbkT8UQdezJeVHf3XIn+OxOeiVGlF
         ziFVeI1kTuRFNDEGirIZBKKsdelIZ+H9VCwENDr4X5NlUigLZNikPnpA9GTsJUYjdgLo
         3JekEOCY+Okk4YEHSQxE+eg3atGPbRT8rWBdVWKgMGCHrCpXjSQjcNBpJVB46Z47jkq5
         XlCA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=DUjk2u5m;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=DUjk2u5m;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [96.44.175.130])
        by mx.google.com with ESMTPS id 26si1262915pgs.43.2020.11.24.23.05.40
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Nov 2020 23:05:40 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) client-ip=96.44.175.130;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 313DE1280408;
	Tue, 24 Nov 2020 23:05:40 -0800 (PST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8AuMCu2vLv9Z; Tue, 24 Nov 2020 23:05:40 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::527])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id A873112803EC;
	Tue, 24 Nov 2020 23:05:36 -0800 (PST)
Message-ID: <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Kees Cook <keescook@chromium.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, Joe Perches
 <joe@perches.com>,  Jakub Kicinski <kuba@kernel.org>,
 alsa-devel@alsa-project.org,  linux-atm-general@lists.sourceforge.net,
 reiserfs-devel@vger.kernel.org,  linux-iio@vger.kernel.org,
 linux-wireless@vger.kernel.org,  linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org,  linux-kernel@vger.kernel.org, Nathan
 Chancellor <natechancellor@gmail.com>,  linux-ide@vger.kernel.org,
 dm-devel@redhat.com, keyrings@vger.kernel.org, 
 linux-mtd@lists.infradead.org, GR-everest-linux-l2@marvell.com, 
 wcn36xx@lists.infradead.org, samba-technical@lists.samba.org, 
 linux-i3c@lists.infradead.org, linux1394-devel@lists.sourceforge.net, 
 linux-afs@lists.infradead.org, usb-storage@lists.one-eyed-alien.net, 
 drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org, 
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com, Nick Desaulniers
 <ndesaulniers@google.com>, linux-scsi@vger.kernel.org, 
 linux-rdma@vger.kernel.org, oss-drivers@netronome.com, 
 bridge@lists.linux-foundation.org, linux-security-module@vger.kernel.org, 
 amd-gfx@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com, 
 cluster-devel@redhat.com, linux-acpi@vger.kernel.org,
 coreteam@netfilter.org,  intel-wired-lan@lists.osuosl.org,
 linux-input@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 tipc-discussion@lists.sourceforge.net,  linux-ext4@vger.kernel.org,
 linux-media@vger.kernel.org,  linux-watchdog@vger.kernel.org,
 selinux@vger.kernel.org,  linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,  linux-geode@lists.infradead.org,
 linux-can@vger.kernel.org,  linux-block@vger.kernel.org,
 linux-gpio@vger.kernel.org,  op-tee@lists.trustedfirmware.org,
 linux-mediatek@lists.infradead.org,  xen-devel@lists.xenproject.org,
 nouveau@lists.freedesktop.org,  linux-hams@vger.kernel.org,
 ceph-devel@vger.kernel.org,  virtualization@lists.linux-foundation.org, 
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org, 
 x86@kernel.org, linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com, 
 linux-mm@kvack.org, netdev@vger.kernel.org, 
 linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-sctp@vger.kernel.org, 
 linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org, 
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com, 
 linux-integrity@vger.kernel.org, target-devel@vger.kernel.org, 
 linux-hardening@vger.kernel.org, Jonathan Cameron
 <Jonathan.Cameron@huawei.com>,  Greg KH <gregkh@linuxfoundation.org>
Date: Tue, 24 Nov 2020 23:05:35 -0800
In-Reply-To: <202011241327.BB28F12F6@keescook>
References: <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
	 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
	 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
	 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
	 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
	 <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
	 <20201123130348.GA3119@embeddedor>
	 <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
	 <202011241327.BB28F12F6@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=DUjk2u5m;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=DUjk2u5m;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Tue, 2020-11-24 at 13:32 -0800, Kees Cook wrote:
> On Mon, Nov 23, 2020 at 08:31:30AM -0800, James Bottomley wrote:
> > Really, no ... something which produces no improvement has no value
> > at all ... we really shouldn't be wasting maintainer time with it
> > because it has a cost to merge.  I'm not sure we understand where
> > the balance lies in value vs cost to merge but I am confident in
> > the zero value case.
> 
> What? We can't measure how many future bugs aren't introduced because
> the kernel requires explicit case flow-control statements for all new
> code.

No but we can measure how vulnerable our current coding habits are to
the mistake this warning would potentially prevent.  I don't think it's
wrong to extrapolate that if we had no instances at all of prior coding
problems we likely wouldn't have any in future either making adopting
the changes needed to enable the warning valueless ... that's the zero
value case I was referring to above.

Now, what we have seems to be about 6 cases (at least what's been shown
in this thread) where a missing break would cause potentially user
visible issues.  That means the value of this isn't zero, but it's not
a no-brainer massive win either.  That's why I think asking what we've
invested vs the return isn't a useless exercise.

> We already enable -Wimplicit-fallthrough globally, so that's not the
> discussion. The issue is that Clang is (correctly) even more strict
> than GCC for this, so these are the remaining ones to fix for full
> Clang coverage too.
> 
> People have spent more time debating this already than it would have
> taken to apply the patches. :)

You mean we've already spent 90% of the effort to come this far so we
might as well go the remaining 10% because then at least we get some
return? It's certainly a clinching argument in defence procurement ...

> This is about robustness and language wrangling. It's a big code-
> base, and this is the price of our managing technical debt for
> permanent robustness improvements. (The numbers I ran from Gustavo's
> earlier patches were that about 10% of the places adjusted were
> identified as legitimate bugs being fixed. This final series may be
> lower, but there are still bugs being found from it -- we need to
> finish this and shut the door on it for good.)

I got my six patches by analyzing the lwn.net report of the fixes that
was cited which had 21 of which 50% didn't actually change the emitted
code, and 25% didn't have a user visible effect.

But the broader point I'm making is just because the compiler people
come up with a shiny new warning doesn't necessarily mean the problem
it's detecting is one that causes us actual problems in the code base. 
I'd really be happier if we had a theory about what classes of CVE or
bug we could eliminate before we embrace the next new warning.

James



-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a841536fe65bb33f1c72ce2455a6eb47a0107565.camel%40HansenPartnership.com.
