Return-Path: <usb-storage+bncBDXO746SYYBRB25JWL6AKGQEPS4NK5Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd46.google.com (mail-io1-xd46.google.com [IPv6:2607:f8b0:4864:20::d46])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8E7291964
	for <lists+usb-storage@lfdr.de>; Sun, 18 Oct 2020 21:18:04 +0200 (CEST)
Received: by mail-io1-xd46.google.com with SMTP id v7sf5088873ioe.7
        for <lists+usb-storage@lfdr.de>; Sun, 18 Oct 2020 12:18:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603048683; cv=pass;
        d=google.com; s=arc-20160816;
        b=asO/xKHtjrK6G3TydHUYJVsXDtuB0RMxHT1+YcRuKN1WGWFxnpTtiyY4PjN6dOyLNh
         /45bDO8vMLN+J5em96A/nULZ4j0pSCMuDwbKfeyTyFvfimQRxT8MbVF+3irOW4H6Dz2W
         C/9aAnVlcgZlJJ1QCGXs1efN4rqFc1mr2fkdfp5IahmM2B2yiCtyTofhogsBnQPN+mVC
         Ntj+2kktyTTyy6Vp/5EI+Niqm9HW9a1eYSFTpNRN+rOnAIBeplpGHsDcjMohXN0BH2q0
         Ee6kc/cpQRP2k2tmA1BypbySYFHUSrhfGp3hDaXJAZ/7qziDiz/7xm1Wh59N76hZrabo
         Sz7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=gaHgeafN4O2pq2yZ/tDgU+FOk/ZeMDydRPq00Qnm9Fs=;
        b=Ar6l93hQgY1E5TWI8XfuYhhcp4hT30HscHZlT0Gmn3FZ+mMgrwvPTpl5RDqB5mlBSR
         892bEHg8aOfsAVZuudeSCMHt0u0w2PNzV/gBASMuSEzInOhi24GzjHxcEUioJOct/HJm
         coGrPKZkP6kfT/AwmjCeHqexmZP57RwgUotf0jjHG9Fm8/GqLKQWFeJy16xqhNvRC8yT
         /IzCKw2UjwPH2CBimN/4NyAhOmbPkeblirTd9ooDbTBU1jzXitQ0fq6r3TeCaLdgp1WO
         23yJACGR4fs1Y4ZJFwLufG2ZCK1vy2BHcLiLPLRA5r+97O65akN+OJd1uRfFdj01g5BV
         LYzw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=WcP5INjn;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=WcP5INjn;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gaHgeafN4O2pq2yZ/tDgU+FOk/ZeMDydRPq00Qnm9Fs=;
        b=CdnrEZ1ACASXC2UavkiH0Pimc5Ly6adwWSevHxXFUTSciB1WFqgmQeFwPkE4JJutPp
         Papg4aVM5vckRhaWcKJ15m9eqN3D3SmNvVYurWDtwSjRkNTkKGTQ8Ou6Y2zhzndeqr9Y
         tHMTUZjfax9L3otKoBIvSkUF1v02XuzpisIZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gaHgeafN4O2pq2yZ/tDgU+FOk/ZeMDydRPq00Qnm9Fs=;
        b=mdaqZ0LFdfGO1Sw6BKkY0l72/frx+P2SwytKNZwHvfKdBW17ciQ9Lt0WQH0j4h643T
         kSdOABkcWwv0KISm5YYRUtsGUzCrXtSHemF/Wtow9EBvB0a2c+Z4ZtBsVjpJcYOInXZi
         8XaytwCe0T1unNhYycHj4UjWvbp3eo+UG9KPTmKeq/rmR8iOEVDjxzhjmku4pSNOgRO2
         Zi9bSVYA15BXnhCYwTMGkPp8h8MacBLMuBsjZe3FQZUjBmKzqgNAKS+qQG7DuqdOs8Jl
         KhZsy/jKzMsVPe0Pg2Iga4IU6PsPC5px0GnErU+khVZfTgvPkJVghjVGvpGDR0mQt37r
         b4XQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530Vk0skTQkkUpKybvhGcmtrCAwgBIDU/7lDb6N8mN7tNtudRN9I
	VEAU+iCsOeFdH0WzrOyjhHr9/Q==
X-Google-Smtp-Source: ABdhPJyc5fj+lvJDJbLp1qKevEhORONss2cuw3+7cUb4nuy6SaiNjtBfN/PHCPifbaNm4VBabSCGew==
X-Received: by 2002:a05:6602:1d0:: with SMTP id w16mr8807976iot.102.1603048683713;
        Sun, 18 Oct 2020 12:18:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5e:8d06:: with SMTP id m6ls1030148ioj.8.gmail; Sun, 18 Oct
 2020 12:18:03 -0700 (PDT)
X-Received: by 2002:a6b:8f92:: with SMTP id r140mr3302640iod.81.1603048683251;
        Sun, 18 Oct 2020 12:18:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603048683; cv=none;
        d=google.com; s=arc-20160816;
        b=eCJRr8XVGhe7pBSTBG1CXah+7BtiLCHmCBihGKsnsBWT+LyyQ8CmkoOgIG4dcsCY1l
         Xbyuf3ho1/ivSPrJB3i61REgT37apmz/9FhNjFy55l2knV7VKloWuok9imynmKbmFgwB
         ZWKFZMW5ypzWbB6U1TAgPoSfvVZIRm3dRoJlkRsf2BlXiLsPrfCbmLLUdcmCqL861M44
         57QnvIP2xfem+rabn+8Q7Dg0H5XjYznKcnaCJjUTkwYpZ3z5uLfJjXVfQylOGbWHX6sd
         nWCvCNbzr0278cgXH3MtJVYvcnf2yktJSEOs3VSBAmQ/IizOHfNOu79kaSedAS4RcxAn
         nbtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=UjUcVY25R4bafGP+9qdVd0aoGYpiqH6Q+ARLhsHNcW4=;
        b=JmMOAo+F1mnaO9OIlJclIXR8Z+W3MBpgQootoUbDyylMInVoI/V5DdB8u0mntsNjdK
         91Cmpkx2d2VLA+DvMFCxK6Zpx4lGWkTGqPnaFPQUl+X2yavMh2lRTyQo7/OLg6frqr/F
         paT/jL2Z3ptyUTkSynsEbv2cLDvtdqaHHqELGPKUVCax2K0EPlryLIZHJB2qiIAoW8GT
         dFgym2xEhpjisFU5e94O67cyrJP0sTS8dn8ieKByH8fnIj6yKk1sjHc8yDFiUlorPGuB
         sKQOsKwXxHQozeTPQ5INHo2f/XLYxveDxyyQA0Yp3Z1b20W5x22BD6Q7zzpC2DlQGEkq
         YMQg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=WcP5INjn;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=WcP5INjn;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [2607:fcd0:100:8a00::2])
        by mx.google.com with ESMTPS id t13si4313166ile.9.2020.10.18.12.18.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 18 Oct 2020 12:18:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) client-ip=2607:fcd0:100:8a00::2;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 7A1D5128046A;
	Sun, 18 Oct 2020 12:18:02 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ywWMwLsGscQI; Sun, 18 Oct 2020 12:18:02 -0700 (PDT)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::c447])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 340C31280456;
	Sun, 18 Oct 2020 12:18:00 -0700 (PDT)
Message-ID: <0a739bcd421a3154c2521b49779b287e6c0d08a2.camel@HansenPartnership.com>
Subject: [usb-storage] Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: trix@redhat.com, linux-kernel@vger.kernel.org,
 alsa-devel@alsa-project.org,  clang-built-linux@googlegroups.com,
 linux-iio@vger.kernel.org,  nouveau@lists.freedesktop.org,
 storagedev@microchip.com,  dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,  keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org,  ath10k@lists.infradead.org,
 MPT-FusionLinux.pdl@broadcom.com, 
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
Date: Sun, 18 Oct 2020 12:17:59 -0700
In-Reply-To: <20201018191618.GO20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
	 <20201018185943.GM20115@casper.infradead.org>
	 <45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel@HansenPartnership.com>
	 <20201018191618.GO20115@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=WcP5INjn;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=WcP5INjn;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
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

On Sun, 2020-10-18 at 20:16 +0100, Matthew Wilcox wrote:
> On Sun, Oct 18, 2020 at 12:13:35PM -0700, James Bottomley wrote:
> > On Sun, 2020-10-18 at 19:59 +0100, Matthew Wilcox wrote:
> > > On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > > > clang has a number of useful, new warnings see
> > > > https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 
> > > 
> > > Please get your IT department to remove that stupidity.  If you
> > > can't, please send email from a non-Red Hat email address.
> > 
> > Actually, the problem is at Oracle's end somewhere in the ocfs2
> > list ... if you could fix it, that would be great.  The usual real
> > mailing lists didn't get this transformation
> > 
> > https://lore.kernel.org/bpf/20201017160928.12698-1-trix@redhat.com/
> > 
> > but the ocfs2 list archive did:
> > 
> > https://oss.oracle.com/pipermail/ocfs2-devel/2020-October/015330.html
> > 
> > I bet Oracle IT has put some spam filter on the list that mangles
> > URLs this way.
> 
> *sigh*.  I'm sure there's a way.  I've raised it with someone who
> should be able to fix it.

As someone who works for IBM I can only say I feel your pain ...

James


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0a739bcd421a3154c2521b49779b287e6c0d08a2.camel%40HansenPartnership.com.
