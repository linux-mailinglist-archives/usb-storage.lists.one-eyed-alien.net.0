Return-Path: <usb-storage+bncBDK73744WQBRBRPTTWEQMGQEGNQFANQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com [IPv6:2607:f8b0:4864:20::d48])
	by mail.lfdr.de (Postfix) with ESMTPS id 175D53F8651
	for <lists+usb-storage@lfdr.de>; Thu, 26 Aug 2021 13:23:52 +0200 (CEST)
Received: by mail-io1-xd48.google.com with SMTP id d23-20020a056602281700b005b5b34670c7sf1463642ioe.12
        for <lists+usb-storage@lfdr.de>; Thu, 26 Aug 2021 04:23:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629977031; cv=pass;
        d=google.com; s=arc-20160816;
        b=enqMTvJIb/hozmfPBMGRlaIkCcKy2SYYB3A+IizCYYaNCCd8UpxwLYBC1WOMbHPN4o
         fKT2QEOsrO0RbU7e4bAc/WABRs1ofEcz9AJDdvvKMPjo3QSHP6zTtTIIpKSTPCPgIN4y
         ThrOUPSm80Ck1rzlPHdgEfmzgii9OnaOi80UZfT/f12UhIQrvlVeD2+ek1EDT9TfmNAp
         dhcqjD3sIXJ8lSivmBrUQPfc2VGE9YScG2wW9GpZIvLtt2FKN9whrGyuWEB8NqTgnSOF
         /VkePDAxGBRJZSSC+ndUAbiRd2LCx/7s58HR55SuFmUy0+cj+zgQWH+GvRitDcyCLIEX
         msfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UkDf1Fm7BI/DrsxuwWUujkhertMTWcjJd+XeRpVXIQQ=;
        b=owIwLJTkqKJgRfcHZYv7ENK2pjR+dEDRksbs4qApC/BgqQHBCI2WS5r5bPAvy0ayf5
         Q/KAkI7eK6HcdAB3TuDsUskyD0eQnDoxV4R8r/pDQJp9ZbQMC8PwPKnQeCqyQQNWAi0s
         QK1gdCbxSSO19jfWLf7zUJ3zZ7o1hXM3nx9kuR8IS1TSfjVQWJwjZGZTMVRLXxlTuyP1
         jqjSRbz4Ud6h0IyQbcyWyxbfd/brjztQ5wRPVgYK7AnV/Hm9gCFjC4vZrbUZpLDspB98
         ai6CisvoU/Xjz8PMbH0Nip5ySUgAnYs/EnSrafZq22NlI2AQBKHfKCceAy93cOSm5kN8
         ZPxg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=y8friRw+;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=X+efeJc3;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UkDf1Fm7BI/DrsxuwWUujkhertMTWcjJd+XeRpVXIQQ=;
        b=L4yJIkQ5BykmDcgGUvV4mzBE+kOEMLC2m2PQPI9Y9O36elTbZu0weJZ5zZaoXteJD0
         EPjauOEaBWltd/E+pskiu1R53M9Zd45qPIQyEPlC9+1DEkUq93cwOBZBobd8FUr/OZ6f
         kNGNiPLQp0pihGmK8nnLOom4eI0tLv7fdvaTQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UkDf1Fm7BI/DrsxuwWUujkhertMTWcjJd+XeRpVXIQQ=;
        b=pjZFqs/4Le6W6gOyZYnbk2r88Pj7cEp42PdmGp0zSFoIL4dk283cfpwx+f8IbFlAx6
         oITvyY9TInJ3HPcYXazdWBA6ZGxPHjrBiOj6UChgKabuec3D8KfIxWa8GhbDEH0vyGZ0
         DiqIhql8CvwfXPcRcWwYeUIQLCj4ADH4LMFx0c58Zu33p+je0BQuDbgL1g4qm5am/9yS
         Mhhud78vM5NyqL68HiZk925c1Mq+npVYJISdCTnNqyRXswYTPw2FSuy3nksAjgkRZW0M
         E1OUGRxgKB4O98JB7Lse6Fnd0QHg8s3WkVBcovDEnDirST+jr6RaW3muR8bT+MM5KTYO
         xSig==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531f4WqOMe6C9DsIrM//mRFweHVGgE6PfLGISuaeZNIqUDj95c+W
	vUEswn/kVlPVYWx3i+RIhPyz7A==
X-Google-Smtp-Source: ABdhPJwYzvy+6W0NuqUYSRGlsxfyOJkK8xPrfU38oJpYvS8+IcdbNoCbHmrUUb6Yu436kW8ikfsgVA==
X-Received: by 2002:a92:d9ce:: with SMTP id n14mr2412362ilq.9.1629977030003;
        Thu, 26 Aug 2021 04:23:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:81ca:: with SMTP id t10ls872533iol.0.gmail; Thu, 26 Aug
 2021 04:23:49 -0700 (PDT)
X-Received: by 2002:a6b:2b97:: with SMTP id r145mr2608191ior.193.1629977029500;
        Thu, 26 Aug 2021 04:23:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629977029; cv=none;
        d=google.com; s=arc-20160816;
        b=F8pAutqI78j7OBe8qj49AwoC1Wdwk6RKOocba7sn6bTYDaqW2gqKH82famD15fwGDc
         FaEkGq2wYcm04DWZn0XKJwcac9oIiK2OXm7oRrKCXvIYL38fwcu6kykstTicq14weLFl
         C058snkqRzzJNhdpvS/yCObsLPXPye3BBl1Hy3ZgNXJ4tdA12dn6OKTlgo/CmLdRgcmF
         GXIRCMmV6Meu7OR3thfJ4T7TZJDScdXPr4RGGVr8aryK7/SyDmomdSwthbS9AO3o1fEQ
         NU3xVL9JER87Z5ilOyk6aqIo+lEp9EDMwhTQkHJ+ZTRKiI/4u3eYmTgPrrgd4QvxpIyM
         8V1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=xhPeWgw2JhcQ2s7hwE0vCi4jbgoeiwq015e2qX2II3U=;
        b=L5gMhVCSdBmSXUYSkInl5V5PT62mVsjXMGLqcm4H+GoyKCvvwL5CAP1PJLKvqn8AE1
         bBUxbBhMzad1DDHYj+UdoAEV5had+N6DzX2nJ/54JDa7RZHnVdMzMYM8/1rEt0tlOTqW
         Neb+e7WbilNsR3D/Bkf3nGleVnqO0zRBC1hYXXa2QYz+l7Err1+F27EhchmkUkGrPN0K
         dyeOlewDL8F8n/ymOr7PZAG8Y7CUqNohrALHA1aT2/EnWIeFzQorrBuNTM6yLIbX8g26
         Ea+jsSMnevDF5xecJY6YxgKNvozPMlGSmTUci+1Ey4TB2Ua/al7ovVX5OmT324WKw1CA
         DkZQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=y8friRw+;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=X+efeJc3;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by mx.google.com with ESMTPS id h30si2650175ila.1.2021.08.26.04.23.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 04:23:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id E56E45C010E;
	Thu, 26 Aug 2021 07:23:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Thu, 26 Aug 2021 07:23:48 -0400
X-ME-Sender: <xms:xHknYRnDLDqXOM0ru4pUoW_9qQl2FOJvEi3Em2udy2BuqF0IXsxeIQ>
    <xme:xHknYc2jWc3sZzxQk43_J4QnjCIJXE5oMZFZC9eub2Y4nM4Xl8CeIx4I0icYYZuvK
    OGCIxmuqKUleQ>
X-ME-Received: <xmr:xHknYXpEsbbVRuGu9fGubLHsj-Lqq6NKiiZn-tRgOv-EUOWykokTWDGn>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudduuddgfeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
    fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
    drtghomh
X-ME-Proxy: <xmx:xHknYRkwWz5L6YEUM9YbXfRJvR88v8DJp0nCYi8ZMAzJFnZBczVbJQ>
    <xmx:xHknYf20WbuWGOWKeSbXb-Y-syZEdsxcpuN8ZOORwSO9LiYlEN2qbA>
    <xmx:xHknYQv67x1_SAfh7QfW20vc64yMmGDM_ERl62GKP7yQOHHO6ZU3Tw>
    <xmx:xHknYYI_gsRLBFCWiLL6E8073SwHGYHoeiTTnkHFOcvhPVQ7J4oNJA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 26 Aug 2021 07:23:45 -0400 (EDT)
Date: Thu, 26 Aug 2021 13:23:32 +0200
From: Greg KH <greg@kroah.com>
To: Niklas Lantau <niklaslantau@gmail.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] Usb: storage: usb: removed useless cast of void*
Message-ID: <YSd5tKoxq2yABc+U@kroah.com>
References: <20210821121134.23205-1-niklaslantau@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210821121134.23205-1-niklaslantau@gmail.com>
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm1 header.b=y8friRw+;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=X+efeJc3;       spf=pass
 (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted
 sender) smtp.mailfrom=greg@kroah.com
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

On Sat, Aug 21, 2021 at 02:11:34PM +0200, Niklas Lantau wrote:
> Removed useless cast of a void* and changed __us to data

Why did you do two different things in the same patch?

If you want to work on coding style cleanups, I recommend starting in
the drivers/staging/ area to gain experience before venturing out into
the rest of the kernel.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YSd5tKoxq2yABc%2BU%40kroah.com.
