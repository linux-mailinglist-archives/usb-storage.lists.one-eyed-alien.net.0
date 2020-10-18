Return-Path: <usb-storage+bncBCM2HQW3QYHRBFFJWL6AKGQEDKJ3W3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa48.google.com (mail-vk1-xa48.google.com [IPv6:2607:f8b0:4864:20::a48])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC79291950
	for <lists+usb-storage@lfdr.de>; Sun, 18 Oct 2020 21:16:38 +0200 (CEST)
Received: by mail-vk1-xa48.google.com with SMTP id q12sf2378876vke.15
        for <lists+usb-storage@lfdr.de>; Sun, 18 Oct 2020 12:16:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603048597; cv=pass;
        d=google.com; s=arc-20160816;
        b=oyy6Gw8zpTePcArL6yVNvIbWh7qOK2ADGqjXEYkv5jDWluLYRb8VO6UdT0staIu7MX
         b+/jgNCdTuW0Z2SgaH4CNUNhUufoBK/jBEom86WZvsB9g4ngmR0wDmUFZhlHTNqsLwqj
         HMhT4wwi76pAWE/n8lSrdGXDMGd65iiZ3Ao9i1oX1Q7VmaHd2AkUZdcp9H9ufy5EqCYv
         LEn4aJFoi6m/IbwPE7XVGR3y8E/zVivvmaVYmgLHym4QMVK1GfGLUr0hZf+0QNkVL//0
         BJRSDxddpB8dsdb3YrqGZO8NaSWZUNL2mMxZAHmQM6JP2KTiwIffk+GCIr+OlyenUGD6
         p1SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=D+xKSqln0mBTvJntzpQurtzUJUVC4rYJy3zXYJovEQQ=;
        b=ObetGEfX+Ypr6YZnNLiIyXU6BkYhTSiSzIiz89XwZ8rqMykOIZ/0PxeSJSpTAnw9Fo
         KYHBZse5gVE9RMFfE3tA1hc+NAtQEzw8h1lNFx7/jsl8jfehvAoF6TifQwNTJxrdJqbR
         7+ma+XBKAh9Z6o7oMA6hCqSY50fzWZ+WbTbCiA4wHsF/U1PAShiDcIhijQvhoSjeN9e3
         qJwjV+UTW3SNFIA+T5yikiFF95DJiFDWRWbPu4JKG8Ma0tVUvtpdwdr45jCyXWs3c0UG
         k24I1kWzzMFvqIf3JKOAVYP7zAbtXfXQY/fdtQ8rtIAfAQOKcUabWv+BVY4S0LwVSvOb
         OOvw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=iJ9Ua4Sb;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D+xKSqln0mBTvJntzpQurtzUJUVC4rYJy3zXYJovEQQ=;
        b=HkX0+Zi6xb49GMm8gzq0PyB92Au27MI3+f1kjHFb9rMWVR60gMilUiPsYV2yDAvM0V
         IxjzHbrR0D0NDiZ+ihqjNaJsrKG/oICOUjLnKpEqYScoWPbCglAKZeBhJlFlCLDOw3G5
         mp42+HJv67bzN+UY0p3HusVLvaK7MGZqvM02E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D+xKSqln0mBTvJntzpQurtzUJUVC4rYJy3zXYJovEQQ=;
        b=RBMFwtDntWruVQ5ZZWa0FTHQrdS5uBOC6cX8YPLd1sK5f+aabJTMC/lXz3euoHwiuT
         lQHcXzVr9TfQqD9sPiL/EOTONUmk/+zP+pHsSBZukDJnsOKxhgNmsXLBsUwQUD0hO6bA
         JIPvNUUQITZtaEI3yz55jFqxoghbBKx3oaL4EypuWgWhAHj1n+UG72FJdK/IojlCtEuQ
         e5gZm2kj7BYCXPHD3tuIg03onNRkR+HI28ppQptw2MvNvrWO5qA7HxW/wZl5QJ7KJ/rk
         75yaGJSeb89kkjnktEgGfvI2Skiw9hoAyaW2orZXTB9Tlo3TcNCUcsSR5uT2CQT/Fqhf
         RrCQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530OLfWboVg/D7Knt6W02T28Jm7ydLhO4pPWJENsV/wkhUCCzum8
	eEyhGBOVrDVnP7BLMksYM0G5hg==
X-Google-Smtp-Source: ABdhPJzhFA6KcUPfDtyU4mFWGPITssGkvIM67oqKfTEsdlTFqNJEKDFeTHXVIWutGdyI2qQ6XTMhzQ==
X-Received: by 2002:a67:e983:: with SMTP id b3mr6940694vso.53.1603048597000;
        Sun, 18 Oct 2020 12:16:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1f:ab4f:: with SMTP id u76ls398090vke.2.gmail; Sun, 18 Oct
 2020 12:16:36 -0700 (PDT)
X-Received: by 2002:a1f:9c09:: with SMTP id f9mr6675557vke.13.1603048596388;
        Sun, 18 Oct 2020 12:16:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603048596; cv=none;
        d=google.com; s=arc-20160816;
        b=1C2+QhJhl864FsY+bPaN7+Z0Wo12xrZUBKIA3PxAi4hKt3N3OJowhjvo10QJzCXVw0
         RtlzOrO3xzUVFtqmBnHduhrUU/DpnqZUiAkPS/XMMFc1T+3z+p7PIudzk9CxkBWDp5Wm
         GOx2hOx70PuqaFWvGARWQAerJuclywOWjXwXgrU5rGxP0QKHQmnnuPRGv0fpc5ZcKX+8
         VAKhWxLi/3on93adtc8JK/AnBnMKJvt7uHickGVG5WRX3TDuD4E9+nLs+PwQ+VtSgToE
         f7IpJIqNfobTqOLotBmVnXOFGGA2G9z1184KBQxW/Pq68iHTVwugMSQp+z+1tkVR9Xv5
         ka6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jSZ48E7Pk5au6oJE5B/SpoPyGzHAu2LHc5e92XLrkbA=;
        b=sSKxn0Kx8nPjuCQZWz8axUlIkiRzfUVfWbFpGa4igH0rzN7nqPpaAZLgmKjKn2wU16
         QVGkxkcRiMqDhl/fE54I9JOVBQDzLKv3VuSQ7wbGEuTuodagERRPyto0Sj+w8ud6Qxyl
         Hmb7M1IagRKCfLYKGePeEDOFe3mn/RGVv8DWWVMZ87HJ5G49M6rWHQOZAqWHA+r0cVZ9
         40j338JIoTrKSuVbMZ6To3Hqb/o26tCS1c5KpM07GR14DOw6JGVFGR7EPeJCwWiuYl5f
         22DNQ2B6x/nGl4YZ3x58mY41wPAbI3nYjdvgPobHkCSgW2owNhkXo+Kk+lw42xzIWMDi
         g9rQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=iJ9Ua4Sb;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by mx.google.com with ESMTPS id v17si890937vsa.277.2020.10.18.12.16.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 12:16:36 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUEAE-0008Qi-Sy; Sun, 18 Oct 2020 19:16:19 +0000
Date: Sun, 18 Oct 2020 20:16:18 +0100
From: Matthew Wilcox <willy@infradead.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: trix@redhat.com, linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org, clang-built-linux@googlegroups.com,
	linux-iio@vger.kernel.org, nouveau@lists.freedesktop.org,
	storagedev@microchip.com, dri-devel@lists.freedesktop.org,
	virtualization@lists.linux-foundation.org, keyrings@vger.kernel.org,
	linux-mtd@lists.infradead.org, ath10k@lists.infradead.org,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-stm32@st-md-mailman.stormreply.com,
	usb-storage@lists.one-eyed-alien.net,
	linux-watchdog@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-nvdimm@lists.01.org, amd-gfx@lists.freedesktop.org,
	linux-acpi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
	industrypack-devel@lists.sourceforge.net, linux-pci@vger.kernel.org,
	spice-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linux-serial@vger.kernel.org, linux-nfc@lists.01.org,
	linux-pm@vger.kernel.org, linux-can@vger.kernel.org,
	linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
	xen-devel@lists.xenproject.org, linux-amlogic@lists.infradead.org,
	openipmi-developer@lists.sourceforge.net,
	platform-driver-x86@vger.kernel.org,
	linux-integrity@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
	netdev@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-security-module@vger.kernel.org, linux-crypto@vger.kernel.org,
	patches@opensource.cirrus.com, bpf@vger.kernel.org,
	ocfs2-devel@oss.oracle.com, linux-power@fi.rohmeurope.com
Subject: [usb-storage] Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
Message-ID: <20201018191618.GO20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018185943.GM20115@casper.infradead.org>
 <45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel@HansenPartnership.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=iJ9Ua4Sb;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Sun, Oct 18, 2020 at 12:13:35PM -0700, James Bottomley wrote:
> On Sun, 2020-10-18 at 19:59 +0100, Matthew Wilcox wrote:
> > On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > > clang has a number of useful, new warnings see
> > > https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 
> > 
> > Please get your IT department to remove that stupidity.  If you
> > can't, please send email from a non-Red Hat email address.
> 
> Actually, the problem is at Oracle's end somewhere in the ocfs2 list
> ... if you could fix it, that would be great.  The usual real mailing
> lists didn't get this transformation
> 
> https://lore.kernel.org/bpf/20201017160928.12698-1-trix@redhat.com/
> 
> but the ocfs2 list archive did:
> 
> https://oss.oracle.com/pipermail/ocfs2-devel/2020-October/015330.html
> 
> I bet Oracle IT has put some spam filter on the list that mangles URLs
> this way.

*sigh*.  I'm sure there's a way.  I've raised it with someone who should
be able to fix it.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201018191618.GO20115%40casper.infradead.org.
