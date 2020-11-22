Return-Path: <usb-storage+bncBDXO746SYYBRBJHQ5L6QKGQEH3IHYZY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd46.google.com (mail-io1-xd46.google.com [IPv6:2607:f8b0:4864:20::d46])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6ED2BC861
	for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 20:12:38 +0100 (CET)
Received: by mail-io1-xd46.google.com with SMTP id i9sf11106404iom.23
        for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 11:12:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606072357; cv=pass;
        d=google.com; s=arc-20160816;
        b=gtmFb3cJDEOiyJ98K7sYWUA3I45ueNHY4YeMcGf5lJdDvk/L/IfED4vMDrleoh/7LF
         /+BWZx60aZW3ki+Ga/6ytuMKlDbN4PuVgJa+2DnkEwo8uCUEFiPFs+jN8dZUVdfxsOW3
         /LkxyhODN1K/1tIGS1FRvCZ8JVpI8mFBAgGM34Vs32CmuTNcIPU181b2otXTYYs9iVZB
         HtxInYCI2AVZ8aLX/TvYzyHVQfy2dgveL8UrfQeQGbDX9hRwklXv7ruvh8oMY1Nxg8At
         5t0lQkDduUshglOWg9WaHj312FhDMqUnJEL+gQxLAsz2VnKtXZhQ/NBZQZtH/fiEaDCw
         nQlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=I1knYXFdrgRlLB8I3MJtvf+2rwuP04otpD/zP4rLTSk=;
        b=XfAhh6Hul6pmu1ZhTWtw0GTiAuhYRgsCPzGrVuVLUJRU0bHMU3iFf5awF/pvVOoON0
         eAEKXSTVxLj1FqKVzKAJWWVo4AAMwDNmGdRryBRg2yxvfPu93nlFItBqpTReSXyh9zU+
         urKSFkQJxzaAs9ByYJqWmZdiLMRXNSfs/TDxOpZZWAvIW4y+XOV/J41Q493wYtCxvT5k
         DwqRSt+rPryCAcO+dB5puJIusvjoB13YH6wPcimSND06JNRq/NDT/58kQ1ZTZ0jc8+vI
         DLaPZ03FMzNakempmYhvuC7Hibqlryd5qu2rKHcxVLWqnh8JbSbpm/Hc3bqVRH68JVow
         DWvg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=cqs+SSmh;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=cqs+SSmh;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I1knYXFdrgRlLB8I3MJtvf+2rwuP04otpD/zP4rLTSk=;
        b=hBIKr76clPW7OQhD6y4qL43WnLg4rNEsetDaHsA5ScsUxwPX2C575+oCmQgcZ/lRxU
         cTMbZdOtH0vBfGIM001/7b9N2D+N6B1UcfhENOlTLk6WP+unfbXOGxOEOYeoH/IHQFP2
         iJgZ0GmCbQAXBUEfaXfJxohPRCqdvMKM6HQ1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I1knYXFdrgRlLB8I3MJtvf+2rwuP04otpD/zP4rLTSk=;
        b=HchpIs16SgMbvN0sp6mm52qOq4SOQ7Y6xaEbGxpaA0pAaeCMe7tpMDhI9Bi8yfs8Dv
         tXYDkICZuhw7SxgBjyDnh2c/2cCGJXeX5EQpD6K8VsXbO76se5BTIGVRGl50BNgM7U3A
         lyJp/jgBAcYb1aqboWQKFof+JR/Aim8A8pI1kJvPmPqGLzezzJcqkXphIkHuhxQYj+Uw
         wyp7NWw937Ncdk1ihkNW/prYZtbSq38zNR6CgbhhfO1wVzQRxbMQPfPzIkdUlw4iPvie
         SHwnzliGE1rdRD+S9WDYstKVGfzc7NJdq9hVoVbZuml4UvG6Nsm8A9zVw5+mJOThiU8Y
         R7/A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM53049pkKxP5vJ13a5ZrUqWSGsTtRjkRVSrMTi4DA7iM0R2EpB0Wr
	GPmRiguhaoc2+fY1x9MwT91EIw==
X-Google-Smtp-Source: ABdhPJyeCelC9eSVk1pehglnCGMkSh6hc+cu2RhDEU9m/gDmXmtICC1nuBxH6jvR4QIFaaKR1vFVwQ==
X-Received: by 2002:a02:824b:: with SMTP id q11mr19890571jag.139.1606072357130;
        Sun, 22 Nov 2020 11:12:37 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:b6cf:: with SMTP id m76ls2461833ill.2.gmail; Sun, 22 Nov
 2020 11:12:36 -0800 (PST)
X-Received: by 2002:a92:89d3:: with SMTP id w80mr29913009ilk.68.1606072356669;
        Sun, 22 Nov 2020 11:12:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606072356; cv=none;
        d=google.com; s=arc-20160816;
        b=YdqMJ2lxOXsfqJfxzxY5UkJzIhUidBj9fk2LAW7s/8QBjDF0+67GLXQn1hwQB4OlL9
         VciU8CSBZtMNg7JDmn+lXPWcuq3+cECDNQiOAqPtl+pfO7ahYcRyuYIdT0jNnoArphFx
         YUnXBI6FfdjdsJ/Yjw8glQAxOjfW4kg0jQIV7lB5v3wxCR5KvsHGMHtY/z4WKyW0YmnM
         y4+vTwO6a+nJKSDTviGhuPfAPpwaDqlOsPaU5M4jcjNTWkwtCHjk3pYQyfGhT7KW8KZG
         HIc1JHMdm4wdUGSWKe+W4rHPuvdrk12h5AkuGFf2j4rVj+Mya9wRYLcL/mQKteCmVffS
         1e8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=3hxjM4ExBjozSsk/4rZZboxwxXlJbRWL+DEVHm4wB2s=;
        b=JvV2zdpBzlRHe1SF6s3c0+R4/RrfE6vmuRPIzWrCyam17ooX8hcMZVRy4IJZXQCxt9
         3311ujhuGl/n8vbZI4Ytw/mCswKAYnAOc3wAbp50HaOFuSA/+FtRJsju3OF0XXKFZG7q
         bl6de/jycZrcNRN9r9xmBZywYfC9TJCZoLnptxzXwGCJVWOce1bk9EPohchMylc8JJLS
         O4jYcf8XX06PpmgZyRAJlm8X+C/eOtwD665uI1VgjlGLSA3lvmpSynRPiPEWOKS0pGxF
         he1Urq8+w7s7dvnZ8K6QOKhWVe2VtSUYMXpG56uQzkhfh5OdnUBp3U/1pLl+1fHxl6Ao
         eIQg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=cqs+SSmh;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=cqs+SSmh;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [2607:fcd0:100:8a00::2])
        by mx.google.com with ESMTPS id j4si7834467ilo.121.2020.11.22.11.12.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Nov 2020 11:12:36 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) client-ip=2607:fcd0:100:8a00::2;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 96EF41280181;
	Sun, 22 Nov 2020 11:12:34 -0800 (PST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T_J7YGNeXPBb; Sun, 22 Nov 2020 11:12:34 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::527])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id D7CFF128010B;
	Sun, 22 Nov 2020 11:12:30 -0800 (PST)
Message-ID: <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Joe Perches <joe@perches.com>, Kees Cook <keescook@chromium.org>, Jakub
	Kicinski <kuba@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, 
 amd-gfx@lists.freedesktop.org, bridge@lists.linux-foundation.org, 
 ceph-devel@vger.kernel.org, cluster-devel@redhat.com,
 coreteam@netfilter.org,  devel@driverdev.osuosl.org, dm-devel@redhat.com,
 drbd-dev@lists.linbit.com,  dri-devel@lists.freedesktop.org,
 GR-everest-linux-l2@marvell.com,  GR-Linux-NIC-Dev@marvell.com,
 intel-gfx@lists.freedesktop.org,  intel-wired-lan@lists.osuosl.org,
 keyrings@vger.kernel.org,  linux1394-devel@lists.sourceforge.net,
 linux-acpi@vger.kernel.org,  linux-afs@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  linux-arm-msm@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net,  linux-block@vger.kernel.org,
 linux-can@vger.kernel.org,  linux-cifs@vger.kernel.org,
 linux-crypto@vger.kernel.org,  linux-decnet-user@lists.sourceforge.net,
 linux-ext4@vger.kernel.org,  linux-fbdev@vger.kernel.org,
 linux-geode@lists.infradead.org,  linux-gpio@vger.kernel.org,
 linux-hams@vger.kernel.org,  linux-hwmon@vger.kernel.org,
 linux-i3c@lists.infradead.org,  linux-ide@vger.kernel.org,
 linux-iio@vger.kernel.org,  linux-input@vger.kernel.org,
 linux-integrity@vger.kernel.org,  linux-mediatek@lists.infradead.org,
 linux-media@vger.kernel.org,  linux-mmc@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org, 
 linux-nfs@vger.kernel.org, linux-rdma@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-scsi@vger.kernel.org, 
 linux-sctp@vger.kernel.org, linux-security-module@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org, 
 linux-watchdog@vger.kernel.org, linux-wireless@vger.kernel.org, 
 netdev@vger.kernel.org, netfilter-devel@vger.kernel.org, 
 nouveau@lists.freedesktop.org, op-tee@lists.trustedfirmware.org, 
 oss-drivers@netronome.com, patches@opensource.cirrus.com, 
 rds-devel@oss.oracle.com, reiserfs-devel@vger.kernel.org, 
 samba-technical@lists.samba.org, selinux@vger.kernel.org, 
 target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
 usb-storage@lists.one-eyed-alien.net, 
 virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org, 
 x86@kernel.org, xen-devel@lists.xenproject.org,
 linux-hardening@vger.kernel.org,  Nick Desaulniers
 <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Miguel Ojeda <ojeda@kernel.org>
Date: Sun, 22 Nov 2020 11:12:30 -0800
In-Reply-To: <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
	 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
	 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
	 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=cqs+SSmh;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=cqs+SSmh;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
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

On Sun, 2020-11-22 at 10:25 -0800, Joe Perches wrote:
> On Sun, 2020-11-22 at 10:21 -0800, James Bottomley wrote:
> > Please tell me our reward for all this effort isn't a single
> > missing error print.
> 
> There were quite literally dozens of logical defects found
> by the fallthrough additions.  Very few were logging only.

So can you give us the best examples (or indeed all of them if someone
is keeping score)?  hopefully this isn't a US election situation ...

James


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0147972a72bc13f3629de8a32dee6f1f308994b5.camel%40HansenPartnership.com.
