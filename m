Return-Path: <usb-storage+bncBDK73744WQBRB37TTWEQMGQE6IIEXUA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ua1-x945.google.com (mail-ua1-x945.google.com [IPv6:2607:f8b0:4864:20::945])
	by mail.lfdr.de (Postfix) with ESMTPS id 527F03F8654
	for <lists+usb-storage@lfdr.de>; Thu, 26 Aug 2021 13:24:32 +0200 (CEST)
Received: by mail-ua1-x945.google.com with SMTP id p3-20020ab015430000b02902aab3278531sf727972uae.14
        for <lists+usb-storage@lfdr.de>; Thu, 26 Aug 2021 04:24:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629977071; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ibBSS77v2KpK6zMSWEL166PP85yQK0Fz7paH+5kbl52XcMcgL8lhGyPtH0QjQ/Qfe
         1VHTzVts0vMmRsuUITnUmWHo8vWrN67BBAYu9ozuKu+JUhO+QGDPI9UB4OUwW0jaSYIP
         6KdP8ckJs6XX57QmsROZFBpXA1AxkCx0XPotK1laOei1qMFvXjvsu6ff1XmRTpkwa9qB
         tr5ETqxbJtMHmn8pidvBzdUzbWxQTrnCfEDL/WBWttuVxQpEnOF0R5R5hC/y9F8Ex7ZW
         yU0tSLYdRVXa0bM5ISDheisFgvUJHsTmdhd9RXphaXzOKTj3S+x79Y0H6uBWMG4sY2fG
         9l7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IeM+pK2lR4bnfkG/MiYmi6Nn7YNZrIEj3T6SjzjIAvM=;
        b=jnolTxmtSTxbNq6dZ+yv4/qfwMcEdLSeHbWd9UAoZOnLnuBhg7fXFSj900jz7QKU5B
         wXvdookc2ZAgDaI2gXM4VscHVjATE/D0glcXN4qJu/Gp36NERdzsf3Ur6MpQCZnRT0UN
         YzSqjJZjpCQfXu9kDZGYvI2DKGeeiBkABpZ1AzZ/n7wa1qDerczxbVMUg+d/AWReFWgx
         DmMZ6BC787A3O+qtBPyNQwOU8PoUlGebhP1RbGlLzSXHt+bssgHCyhg8bnaA0W9Qnnjw
         s7Ei5JyzzmFAleDewDDcmA3cROplxOMw/DyYW0qUXI2gPnEa6/E2AsgbnUYqHfdF5vHn
         Ap3g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=FnXInOri;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=MeLqUS3M;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IeM+pK2lR4bnfkG/MiYmi6Nn7YNZrIEj3T6SjzjIAvM=;
        b=UIxSuFd+Pwaf+Y3sw/ZTjevHfSz2l7erjOTBRdqZUBtbDQlnks4QQmsZEPFycyyHiQ
         JhAvBzRwm+fprNsos1eh4tdWdiA7OXsSOn+QWg5gZXGqtCtNI3Wcypg7m4YiBDfvUz6s
         yXfAzncH4tDRaXgXRl+msIDUw5AURpe/UntXc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IeM+pK2lR4bnfkG/MiYmi6Nn7YNZrIEj3T6SjzjIAvM=;
        b=juGq/i/nK0e+S7BslZBEF7hPZOdk1Ec/VB4s+bRPxxOY0xMTahj3hyKfvLxS8DVWzu
         kTxndOK3SraOUCNQPuKtWoNbmcWWJiorzBdNwd+zYyWYUC6JNS3sXdnqs1/v6m7orT5C
         QaClu5ucEQ7nhMPhPbBl539p4RpSsx4osRGrfxZUXvgoKQrWZZxSgD0pM/EokOrmDSOZ
         Z860yHvK/XyOaoHiKoYRLXAT7Yw/kYshrhIh9J+H77XcTvr0qHnQNVS4MReWMyGjbz0o
         wIuHfXKJJ4HZ2G2lI7qzZ7nBKg0Fyyi1b69yjgwz0NLS6Lb7ruUJleFjOCqOFU95lBOh
         JZQQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532LPSjHrNGw7H9BRgQOrKM7dQ7CT6vRQGbqERevQXOSBEuSKTgO
	mZi3+boACjo28QxFMHaTZCm54Q==
X-Google-Smtp-Source: ABdhPJyBaR0H9Ccs7r+QFOH0Rlgs3La9X0rxxl6nwd5HD1Yi0gNLhUP52ExrlXSzRNQFWwqM4fYCNA==
X-Received: by 2002:a67:f243:: with SMTP id y3mr1876164vsm.33.1629977071298;
        Thu, 26 Aug 2021 04:24:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1f:b617:: with SMTP id g23ls379657vkf.5.gmail; Thu, 26 Aug
 2021 04:24:30 -0700 (PDT)
X-Received: by 2002:a05:6122:625:: with SMTP id g5mr1750783vkp.6.1629977070787;
        Thu, 26 Aug 2021 04:24:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629977070; cv=none;
        d=google.com; s=arc-20160816;
        b=r97nd9qKo+PzysVpeM9F8xKKkdD0zI93ZGSbSikMhcQg3ZW5U24HSF5Y03YWhK6BH/
         9GoBZkJOCGxjiUPyV8Ut/gcpvS5PnvuIMY4/6aZdwvOvG5BBGMGM3gQmB2FQnQ2Kwovd
         7XELiX/yA1ExXnj+xXyOS5lL4/E17xQjHp15w7CiePSg9zrTYeTmefaCD3lWDAp17qHY
         N4TiNGOVccOPwkv9wzQqqbFhsPTIU6WOyDJFB9+DK4J8MRRH0kH/248vqmBKLdPmfdGD
         HBJJBiY4MXrKkI5PJRZqAM/dSYX82LslOVowzyja+7mXR7Dj+T+43SKeDDoyAp2rH20i
         PCpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=UPZvmZ84G77Qx4CifDEkh4l1ylt7rvplH4zNzCLTs+s=;
        b=bQPTeZGy6sMRVlUplCx0gMsJe8RuNbfnjds0lm6i9pAc5hVa8EGZKFGz1YzwRQIdyJ
         f73uv3AT3QuYB9+F+LW7CGWfBZMnfTz522C3deGgg1TYL0MCUhoQth10jBGFaHtaeL9A
         pv2fTh3DU7BPzKdG6zCdMCzAh2F1y3lbGHcTxVjaM1L78GThTJoJgL2AfkpKmakxDd/l
         TUQ3GVIhX4JOz4Qjhi6MEp48/v4C3cPWdDqan45YR7Z4jHqLXz9iMTdBSC2wVI1eBuqt
         qI5bMka3ms2XZ68YibMVqKCQGUd/UabhLCyoSi629A1ZhumuTO3SixUE92/miA++aVH9
         kRzw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=FnXInOri;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=MeLqUS3M;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by mx.google.com with ESMTPS id f21si1077936vsj.430.2021.08.26.04.24.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 04:24:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 563305C010B;
	Thu, 26 Aug 2021 07:24:30 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Thu, 26 Aug 2021 07:24:30 -0400
X-ME-Sender: <xms:7XknYY1OUTxNJ6wmiM02To7mAlZ3BJWpK9hrS3mXzyr09S8mP4TcjA>
    <xme:7XknYTE8I7ODi0dsxkAGLMNJ2IHFSpP4uA8QUvuqQLZqVz-ScNbzfyG-Iv1QzPp-K
    7idyskG-yT8zQ>
X-ME-Received: <xmr:7XknYQ7_oOBfxO9qfPOLTzrFdaZNRIrTVueesQOrCquCjC0c_-vAZGEa>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudduuddgfeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
    fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
    drtghomh
X-ME-Proxy: <xmx:7XknYR2ZftOrGYatIt3q508pXOY61FD8Ve4utsxPIJ_5OopVbmDhCQ>
    <xmx:7XknYbEDd1OJdaRORnLMbEJsI_I0jb5p-IvS2av5IUf1YtdFMbeUAA>
    <xmx:7XknYa80EN0k5exKt8ACFUVVJnnLQfpZoyMkjY04Rnzo82tmu6idzg>
    <xmx:7nknYRbH5VRq2HKDq9YAFdla2YEBgN_8C8QdUA9CAvy-wJ2Knh6Vjg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 26 Aug 2021 07:24:28 -0400 (EDT)
Date: Thu, 26 Aug 2021 13:24:04 +0200
From: Greg KH <greg@kroah.com>
To: Niklas Lantau <niklaslantau@gmail.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] Usb: Storage: usb: Fixed coding style issue
Message-ID: <YSd51EXv3eBiLi7V@kroah.com>
References: <20210821121630.29318-1-niklaslantau@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210821121630.29318-1-niklaslantau@gmail.com>
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm1 header.b=FnXInOri;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=MeLqUS3M;       spf=pass
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

On Sat, Aug 21, 2021 at 02:16:30PM +0200, Niklas Lantau wrote:
> Fixed coding style issue. Removed not needed braces.

That is not easy to parse.

And it is written either "USB" or "usb", never "Usb".

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YSd51EXv3eBiLi7V%40kroah.com.
