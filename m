Return-Path: <usb-storage+bncBAABBHNIWL6AKGQEBFF3EEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com [IPv6:2607:f8b0:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD5E291940
	for <lists+usb-storage@lfdr.de>; Sun, 18 Oct 2020 21:14:38 +0200 (CEST)
Received: by mail-ot1-x345.google.com with SMTP id g51sf2337713otg.9
        for <lists+usb-storage@lfdr.de>; Sun, 18 Oct 2020 12:14:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603048477; cv=pass;
        d=google.com; s=arc-20160816;
        b=YJGw/gD+Pic/ee+5SZXkYXIRkFJ1Uczt4sT5+iqY33IHiNnPmV3zcwDtG1zhTTVV7u
         y3P1TjYR/GoolYmHiCxWj9Xb8gwRj5ZwALMMFZXlnrCxFR6AMHVFZzYUw46RLMmqHdSj
         Hm/btvvvp+OBaefs2phRpRzh7yVjYHVt2WNPd9INd//bnV6/Pn8beKBK+0NpVEeR6TQ/
         8STwrZwvLy2K1wUsR9t5JLAVHSilZBes0UgNd/WzqOyssPPny+PhpfGT2hEjV4r/aXRH
         aubS3j2N8g0mbH2WFQj/Ber/TrkNiILJ7P71r0n2bpBAlzqBNoROT2dH23bfpebXVUoA
         3IjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=Hl2lONDg7TyS/ZqqOx7B1jnRIkWg58VkorD3C2pxio0=;
        b=D06qMDL3O4Dr9yzc9KPu1iFkCdP6M1pDEjHyvvL6nGrQJXXokKxarY6IoI4w6fbBTd
         i/l5kLXbPgVKeF9woiqgimoHf9DeD2HozIrw4u+I6RcGOoIRRQubBLs1+i7iOb4GqymH
         clN6vbkU3DKRp0dAzDlQVul+6ptdQcynF+mjcwMCpDhdDQf8nZOrNvn8y/RPaDJUgFyZ
         5W9eDGxRAXNAW4wfA5p8RMxmvSmmLIFzbc47saZegJVlK/EAgSnzXfghUTDH7AQaLfO9
         GQmZEd/nt7UdSAe6NVdqZ/WW3h3Z0T6adSeAVox4SNjilJODoWg3zUj87DAG2JwAM3CI
         z+gg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=QOZMzgTQ;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=QOZMzgTQ;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hl2lONDg7TyS/ZqqOx7B1jnRIkWg58VkorD3C2pxio0=;
        b=aYnLqAUvaFwpcU70j9NEw4ycFWK9CjLy99H3guMym1OdrWPGxap8FZDDkS1XJy6I1Z
         OMl3ewtbL00p2uvIBBUnLkN27vFIGvPxk2hMpz7p3QtXbmV2lVJLiBusL08HKijTI9Y2
         49434u00in03ctHZJ/vrbv42ss+/h+B3Z/gXo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hl2lONDg7TyS/ZqqOx7B1jnRIkWg58VkorD3C2pxio0=;
        b=qzYHW+rttvFSPnaCjszrl1jYqn6Rh2vTbO1AzJG43AGBC9LMgZZf0si4AwX3viz1Su
         alc2E2fDT6woFvwaJl9ijhlQ5MIxPe0DH3x59cQF9OCv8dnx41kScna0Yxyg+TJLJCdt
         ToWeQDe8S0ougRh6TkYN3HaUQ6NlaH0dlzUtws3lQIdQo3eXcbUpO88E+yM+wc5pEPAe
         2bYE9MSzc2q7Bp+O4Mpo5y/7WhvzeNR0YsTqzTRDvtgwx5CuZBG86chB6N4lfHdsZB3p
         gtdPkankVzhk0osKMUWUIl8rLxL8S0jtjQym0vhsiGalRofYGDIwS/X0ZZUv2EqtsZA5
         XEkw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533SxSHXRje9f+GHsqmTtvF3SAt5xv+tUOXGOCZVHbGilr8JDNZg
	+sRkFhuiQ4OAUBVwT7GtKu9OMw==
X-Google-Smtp-Source: ABdhPJzFVOKs3WGqg/SXrskxIsxypZT+vfrJMUq94QjSLE37zLqEnAxIIYLwE6BscdVweA+Uda61tw==
X-Received: by 2002:a9d:c28:: with SMTP id 37mr9953611otr.204.1603048477394;
        Sun, 18 Oct 2020 12:14:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:6949:: with SMTP id p9ls955794oto.6.gmail; Sun, 18 Oct
 2020 12:14:37 -0700 (PDT)
X-Received: by 2002:a05:6830:1013:: with SMTP id a19mr9091018otp.226.1603048477139;
        Sun, 18 Oct 2020 12:14:37 -0700 (PDT)
Received: by 2002:a05:6808:3ba:b029:db:ea72:576c with SMTP id n26-20020a05680803bab02900dbea72576cmsoie;
        Sun, 18 Oct 2020 12:13:40 -0700 (PDT)
X-Received: by 2002:a05:6638:446:: with SMTP id r6mr8918724jap.60.1603048419816;
        Sun, 18 Oct 2020 12:13:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603048419; cv=none;
        d=google.com; s=arc-20160816;
        b=jfmUgbU10eMMRaY77mNdkMk++I2jQk4XDu6SUljnJFFLmdk6ikirKcH3Q/2YwLqVCq
         zmijvI+yoRiLWhylL7kU0y8Ope25kixjJ4EQr2QiAthDW3gqElfGOmCoKkmbCZCogQeO
         kXeWgSioaeL2PEnWFzYCf42RlDX7uuDPoCzt5TPK1ts/1N//T2rb5oIJZZ8vQpme1sko
         hMa8Lwm4snEfctMU8qyoAueX2jnTfueSigOy9ophwTpdB4gnFzXh0F/HWjxU0+3o8cBZ
         3ixAqaqCx6yG0Gk+gcIFc1wMzXJKubcHCZFYDavfCzURtxz0+wRVacPqWr5sTf5RlF3p
         N9Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=WoZTZ49BFrPlyX2/qYQABE9fub5z580pCFQ1pWgk/48=;
        b=pjVsaQPBpyKP6jCezwX8uPCFLbO7ErTEeflU8pwNouLM4us1MetZSeLdfK8pFPab8R
         cgmpPVw0XfLad8qMZ9PW/ag+aFbDZzg2ofT85BGIWRq9XWjXoOqMi+sKwBeIXquRBz92
         DPCJYejspoVrAkaptgUZR8XDkAeWpcCoU5Jfecga9EVrfyJnq9hsAE5igaTUlfFGZZ1H
         bgnP6fXiRPUuI5E1rQ4gdeanO5OhQ+HifwIrWlAYc3dH3PWudhXx8VlktsN8cryPYKId
         VQKDyJB6FK+SAx+9fOXXMbHeedtb8OrCq+/pDi54+M5orXYXU9EfPjzf5dO5jcb0CLIh
         lgsg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=QOZMzgTQ;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=QOZMzgTQ;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [96.44.175.130])
        by mx.google.com with ESMTPS id v187si4571022iod.42.2020.10.18.12.13.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 18 Oct 2020 12:13:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) client-ip=96.44.175.130;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 6E9191280300;
	Sun, 18 Oct 2020 12:13:38 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JsjuUxZpqgrR; Sun, 18 Oct 2020 12:13:38 -0700 (PDT)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::c447])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 1ED2912802BA;
	Sun, 18 Oct 2020 12:13:36 -0700 (PDT)
Message-ID: <45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel@HansenPartnership.com>
Subject: [usb-storage] Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Matthew Wilcox <willy@infradead.org>, trix@redhat.com
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, 
 clang-built-linux@googlegroups.com, linux-iio@vger.kernel.org, 
 nouveau@lists.freedesktop.org, storagedev@microchip.com, 
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
  keyrings@vger.kernel.org, linux-mtd@lists.infradead.org, 
 ath10k@lists.infradead.org, MPT-FusionLinux.pdl@broadcom.com, 
 linux-stm32@st-md-mailman.stormreply.com,
 usb-storage@lists.one-eyed-alien.net,  linux-watchdog@vger.kernel.org,
 devel@driverdev.osuosl.org,  linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org,  linux-nvdimm@lists.01.org,
 amd-gfx@lists.freedesktop.org,  linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, 
 industrypack-devel@lists.sourceforge.net, linux-pci@vger.kernel.org, 
 spice-devel@lists.freedesktop.org, linux-media@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-nfc@lists.01.org,
 linux-pm@vger.kernel.org,  linux-can@vger.kernel.org,
 linux-block@vger.kernel.org,  linux-gpio@vger.kernel.org,
 xen-devel@lists.xenproject.org,  linux-amlogic@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, 
 platform-driver-x86@vger.kernel.org, linux-integrity@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org, 
 netdev@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-security-module@vger.kernel.org, 
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com,
 bpf@vger.kernel.org,  ocfs2-devel@oss.oracle.com,
 linux-power@fi.rohmeurope.com
Date: Sun, 18 Oct 2020 12:13:35 -0700
In-Reply-To: <20201018185943.GM20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
	 <20201018185943.GM20115@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: james.bottomley@hansenpartnership.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=QOZMzgTQ;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=QOZMzgTQ;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Sun, 2020-10-18 at 19:59 +0100, Matthew Wilcox wrote:
> On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > clang has a number of useful, new warnings see
> > https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 
> 
> Please get your IT department to remove that stupidity.  If you
> can't, please send email from a non-Red Hat email address.

Actually, the problem is at Oracle's end somewhere in the ocfs2 list
... if you could fix it, that would be great.  The usual real mailing
lists didn't get this transformation

https://lore.kernel.org/bpf/20201017160928.12698-1-trix@redhat.com/

but the ocfs2 list archive did:

https://oss.oracle.com/pipermail/ocfs2-devel/2020-October/015330.html

I bet Oracle IT has put some spam filter on the list that mangles URLs
this way.

James


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel%40HansenPartnership.com.
