Return-Path: <usb-storage+bncBDK73744WQBRBPHAXDVQKGQEZILZKPA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA43A64FF
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 11:19:58 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id b143sf18444637qkg.9
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 02:19:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567502397; cv=pass;
        d=google.com; s=arc-20160816;
        b=R75B8lmLzp4sjywFLenCgG07wKpPJ7lPjR/FTNm+0qq0bcwG+mmzj1VJK2o7j8iPkV
         Qp8oewxLfm/9IngSiP5wXu+3/tLjff8pe8MXv/WeRSzFbegU4sLuOat3TZa8p5DDWM1e
         kNiOOIhksObmnsA2j6NIjOojV5XtMg/S208eIRyGAHBz9Lgh0xfL0bWHmo7lMfFPc6Jl
         slffycQ0d7GHPBF1O1VqkwRKMLBq020c1Fy/Lyco0NMk2OJZXtGexVxgA1xCVwvue4ct
         DqdrOclVATO5Z/KlPA7+7NWNEViEb/BR9UbtUN4jwVrG7kY7Ck5VaYa85GwHerHDkMlg
         OfTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=GSwki/uGPP7nTaG0TigNs6ghy5tM5/1ivcjSfHk5OhQ=;
        b=XirBT4iEpFacu7gQgasA004sSiq6YHqooJU87yzje60j61lg3mGADvrsHDn36DErJ3
         Z6WRk8i3lzgFS0cjnJSHYTXn4GC+/70xvPbuDb/kioA4NLgLGdX3R47M2QVFqXNM7Mgg
         D9Vr4Gzac+UQxiG2A4b6D+9WpBlsBrKL9WnWcidcaRurK770V7V9bwwQ3Q53ACNgskGR
         dsai6tpBhNcgKf2l1VQYLFFtvb1dbyemsxm9IAlxDVgbO9N8h3Qxc784OUMJJkDUJHz3
         qvSjAX08MsXIX9lirucUtHBuAAzE6YGlGQce/oiEOmyupm/QAf96EFTXukzfM1Ih8wYH
         uCZQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=lsQzpqdA;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=uqN08YPj;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GSwki/uGPP7nTaG0TigNs6ghy5tM5/1ivcjSfHk5OhQ=;
        b=GjrDDfggd3OZ8Jmvblo3RZ4j7crGjh1WSYPAVdRA83NnwVf4WAtvIwpJsjFbTNIGLd
         YD8k8CQSnPIAsCO2E8dJj5dX+gHvNJXks3tFrbpa0VPEKPoh1/WUoeHO3d8oUBcGI+1O
         AyfZDaV7RzD56bE0hlv98bpKyT//SVUAGI6Bw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GSwki/uGPP7nTaG0TigNs6ghy5tM5/1ivcjSfHk5OhQ=;
        b=S8YhyFM1upxIyO8kIYKwALo3ZtGFXixBCQfQQ/Fcftmlu/P8JSdcSZ4Mlgvx0B6p3b
         2qaa5czNFuVw2H2DRx21R7QEzrr6BLzFr3I89qdQucJI38Vt1uIq4bVWnXTAompkB5tN
         uCagziJDQ1M1rGwwLwwlcVRlCFWkT4bx9znujrun2OJx256WawuTlg48sMd18pVGvJxW
         M80/lkX3rkikN/PtlF/Z7LAoPkG0VKIpMhDRKeU4CxBXBJb0QRfj1NFWXEcJyDJI7FKV
         ZO5/MRhzxlX0APf7YPUuZNvWxb69y0slnhgzgCDKP6W625mqY4yralBTgO0EgApd1HOd
         7Dhw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAULigu+FUCSi/jrzH+n4egzFpC5LQZLyQts8AmbAF8Yyq79snGc
	Z0/4jNzapgKUHOTGPWTZvfmHfA==
X-Google-Smtp-Source: APXvYqzQ6QgNsxT8ezy9ppoVCGmDBAwgzoBFdSeWQYKlNbFRfeyTlHLqp/dQzmLhzoXkikG38OSX9Q==
X-Received: by 2002:ad4:55a9:: with SMTP id f9mr21399031qvx.133.1567502397075;
        Tue, 03 Sep 2019 02:19:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:681:: with SMTP id f1ls4001749qth.11.gmail; Tue, 03 Sep
 2019 02:19:56 -0700 (PDT)
X-Received: by 2002:ac8:4895:: with SMTP id i21mr33242557qtq.146.1567502396793;
        Tue, 03 Sep 2019 02:19:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567502396; cv=none;
        d=google.com; s=arc-20160816;
        b=BGw9/gNz2pejeJM4AD6iYbCTNy4nlrL00rjN7D4EiRNpTK045xPi88QaA9wPNXnHjM
         Hujv8GOZzRcm1REemv3JtFYovF6tCrh8H4LSwltUcFp1808jun41tL3vkYbtJyO6xngN
         9eivS8zsvpvcvAPODHdzOGEmFE/3Y3RJwO/skS6uhKx3MNKYqWne9MRovFmHXx8La5jV
         t7vUTEKz6bpCa3YtIqzKg8opIUuHt6vAa0exc1oCmj7CRmVwT04PnBr9U8wQ1CQrLbzi
         OO3nWCRXU1x3MFURgCbXWRfF90Ee5erNr3CjWvG4eGsYeh4MtpCyc5bb4hRWMFM31uXT
         NZ0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=z2lVEw1JSBkzTGutlvzaxeAhxEwJaiOIlS/JJN0dpKg=;
        b=UXS6z6oCIqdY15cd5FahxGFsAAVSUzSjETZPzzRz8R1F0qmP2TLhXU13/27NFepOdh
         dFqpoRMd5UIyDVBPQsmldD/V3W2I3KEdK2joFAbI+C+1KK9CwIcUmGDLMlylTtsVyoy3
         dmmQZjgqDKxh14dzZllvnX4WcxRgi+J0CvwffolGOXkBC3Zd3viHWm2vDVIaWn3TtSDV
         7pfSg1c88Oh8S+1coRl3Tu8vxlvJ8+AAYQgegASC0Ze9GAtb9sMuW+DfZoI68DHvyThH
         zr83BQocwK6NOiTHm7xqeCnWksZ8nceXuMUzc6MP63/oaQ+wPoJVygi+Gyr3TGHpRGJ2
         QQaw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=lsQzpqdA;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=uqN08YPj;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com. [66.111.4.27])
        by mx.google.com with ESMTPS id z31si9168714qvg.23.2019.09.03.02.19.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 02:19:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) client-ip=66.111.4.27;
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 538BB22128;
	Tue,  3 Sep 2019 05:19:56 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Tue, 03 Sep 2019 05:19:56 -0400
X-ME-Sender: <xms:OzBuXS7KelHOV6s07gWBJLgEU1CGD0i5MZa-3yIh_MSZKkV-wr_yqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejvddgudduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuffhomhgrihhnpehlfihnrdhnvg
    htnecukfhppeekfedrkeeirdekledruddtjeenucfrrghrrghmpehmrghilhhfrhhomhep
    ghhrvghgsehkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:OzBuXWR-itCUfIXRrxKUidqjY7FTdGPBp1bQhVeSh_ZEbG56C-upMg>
    <xmx:OzBuXXlIfCGvRWy9-66UGpoY0M3tF-SILrxS8yO4xJEG77VPF2wSqQ>
    <xmx:OzBuXaS1-sPBcPyzDNmZhEskXp4A88BcJp5b7YK4o2BisuKYMcGSoQ>
    <xmx:PDBuXQWTYX9BnbntqHeuKR2NBkWkfzWsjmcfk9tBOMgcjMJSvBlsdQ>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 13D35D6005F;
	Tue,  3 Sep 2019 05:19:54 -0400 (EDT)
Date: Tue, 3 Sep 2019 11:19:53 +0200
From: Greg KH <greg@kroah.com>
To: Oliver Neukum <oneukum@suse.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Julius Werner <jwerner@chromium.org>,
	USB Storage list <usb-storage@lists.one-eyed-alien.net>,
	Dan Williams <dcbw@redhat.com>,
	Kernel development list <linux-kernel@vger.kernel.org>,
	USB list <linux-usb@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
Message-ID: <20190903091953.GA12325@kroah.com>
References: <CAODwPW8gTZ_2WEc9n=WJ2PEmQk2anTQYfwQ-898+kOq6wsjnZw@mail.gmail.com>
 <Pine.LNX.4.44L0.1908301337150.1459-100000@iolanthe.rowland.org>
 <20190902164724.GA22619@kroah.com>
 <1567500374.2878.2.camel@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1567500374.2878.2.camel@suse.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm1 header.b=lsQzpqdA;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=uqN08YPj;       spf=pass
 (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted
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

On Tue, Sep 03, 2019 at 10:46:14AM +0200, Oliver Neukum wrote:
> Am Montag, den 02.09.2019, 18:47 +0200 schrieb Greg KH:
> > 
> > This should work just fine today.  Add a new device id to the "new_id"
> > file and then tell the driver to bind.  That's pretty much the same as a
> > "force_bind", right?
> 
> That looks like a race condition by design to me.

How?

Anyway, this should all "just work" somehow, there's an old lwn.net
article I wrote about this over a decade ago when it was added.  A
number of subsystems use this all the time (vfio?) and I haven't heard
any issues with it in a long time.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903091953.GA12325%40kroah.com.
