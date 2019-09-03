Return-Path: <usb-storage+bncBCTPRFE7TUKRBGHVXDVQKGQEJ237VIQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id DF007A6636
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 12:04:08 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 34sf3603592edf.0
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 03:04:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567505048; cv=pass;
        d=google.com; s=arc-20160816;
        b=whosMDfFKveycgW76Qp990BB8FxPTmbhKhtNJc0TIuu653yQSmBqQ7mZoTUENV57Ue
         6Do5/8bkOBaXCWDpkQ6BprLboeiUEP4PknApK71TVcz61yRoyQse55OGYSdRs563fAAO
         gnih7hAWCOmXNv8E0zZb6acApfDdyBtdTDipgwepDlsDTxKfbnwhvg195MGlSA1BkRZd
         P6EAUMUkvhh2Vpqt0FGwahAoS3bsvBOX1DvkalhhAP9UjO1qwDL+iwSa9D4p9DOKmr+x
         Ki+RTT/trloi7pA6ot2U1REACbs3qldEfzTfHNaiH9n0+ur8/tdzyX6qsDhKow2L77XL
         +qqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=W9m/ncPJ5mq8w0/WELjbzxvyC1vU4fosCvz1y8c3/js=;
        b=YlkD9m/mSFpK7bZZJGI8R8Llo/MocyFgWedR593++3A7hp4OkRcxVTBuXRUYl6xMv0
         guuzT1VaVP4kxJ8ErKiEcPr0UEjVXPYtuVy/NKWGrv2i9XKZ02onCMmtloN8mlLn7aqD
         gxYaWHxvcpaI2dt5ZPJoqxmkQtP2XstSwdn92uEsAb+n/5Q4mXcFzn4KGD7/AsgTdGMh
         9H3Lxsd/2Wt8JQCoW7sWBqcVdEmwtmmqvIDajgaXq76bJsqbL70VmAePr9NTfZZNj5gt
         jjxeI+9t4E+wrXRWxaa0z/zNyiQ+bmKi2fTgqEx/d/Nbl/4uf9VubCsuO9Wwgfm0gDgZ
         AUsQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W9m/ncPJ5mq8w0/WELjbzxvyC1vU4fosCvz1y8c3/js=;
        b=QPFseD4acA/GsRIJw0Ag44e4G4b6Vs8T6mym0lz6GSu2GfGYCyR4Syd/Yxp1nu2ylf
         PSUjNByGn52vXq6uK+1F8QC6ezXvgJ07XuRwRXGigMAN3VE4VA9MwrXijlAhBIcAx3Af
         dDVB+7uD6uswaRsJ5CaZEFsfbqKsmcL3SbURQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W9m/ncPJ5mq8w0/WELjbzxvyC1vU4fosCvz1y8c3/js=;
        b=OrlI+BfVxszFieRsN4sDD/mP/sgATPvy32JkAsn13jx0VXU/7JqnUNamxsEgm+xlNX
         2e7vEzPlkegLtU64d3rfer1+VytgX/imxVxdlj9fMPVMLtatSrjaDrcycNgmMFJCcWIe
         UV4hfl+f2RwRK20x7+5B+22gxKOfkevjHdJM6D1TKlgj59oxI2hHMRqwPJC2E4qdEfaz
         3Af5fw8vUIjMdmU/XrYyQ4q0w7LojAhSK6zZX2R2/F8UxOJUGeZVp+x6zr/rcVcKyaA+
         2DtH016lXU3GMmsVu+yPeHMD/l1A7t310uhu7svJCVsoWf3q3Rsk5yHJAR2tqU0V4Rmb
         3kbg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUAGQGkesFRC9b/sTQGuXPHFuHZ5DS628nHzeCq/38PigdYpB9M
	S2sw/p7cYci1mz9luWe3JWkNFg==
X-Google-Smtp-Source: APXvYqywS+Ew6ANwK7t08RXMH5HEgEdJEIlHyc5va+Ad6f41iKlv2eSQZCVeii4krw1Bzy6o0P+Vqw==
X-Received: by 2002:a50:fd82:: with SMTP id o2mr152502edt.80.1567505048587;
        Tue, 03 Sep 2019 03:04:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:fc16:: with SMTP id i22ls778678edr.12.gmail; Tue, 03 Sep
 2019 03:04:07 -0700 (PDT)
X-Received: by 2002:aa7:ca42:: with SMTP id j2mr21619994edt.197.1567505047744;
        Tue, 03 Sep 2019 03:04:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567505047; cv=none;
        d=google.com; s=arc-20160816;
        b=NyaBPdFhWy7yurmIikGI4h/5jh8qAtpJoiggJVgbFvr9yiTIFz6mxlJw8L4bLZF8K9
         25BeVFJoQVnRxnMwTi0pdyGJ+aoVTqX888A8djx+HW7ahjqHThikWalaOIaRQXnXOI9G
         imW14kjYDsF+CQKtN56q+V9cdKjwb1FJZzu3h5tKO+arIXpWDfwRBbLzYIc0h2js4v5O
         Z73rS1YLTXm2F2YDG8eG8IKR2Y9xvJumjxjL+u6H18F5Hy+ComgYbWaVkhEppNgKP/cQ
         KWIel1NTjPHVmpa32HbBtSxxCvlWk2lMRqyzvxNzgGLLcRTo4uK+6UfRrHMCnxy5db6Y
         0vAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=D7Ew03IHk8f2OFFdoBMN1+r+O6MmaFgMnvayLWzIEpc=;
        b=V3jDAmsGGqJXEax+eIwyQe3es5TO9wJROpMOUw327c73b2Enl+3q7YaT93e5vUIUyj
         CsfTAS/NbNqEWzZMdp1+GXDkLA6dYEsySgZDA5BwUEfAENI6D1ukwFajlkvGLprQQ2B/
         /ilbxIKoUyBp5xkJ3CGsdyvzS6aNvq5OHTPZbXlYul/vdnDpxH8snmAwd2wjYIuKsbuB
         hDIAezYcuv2hrEhFoV/RzCMq/HIaZ/blzxEbsRPS9sOe7DgKFUjGzq0AhxOZvp9kjiZf
         BoDZMNfNF6zGnTPDGjObObXsz6/oO6oqVrvS8ylFeHwXrRQGypiXPGOfhwAjvVuhc40V
         aIGw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id y45si10797154edc.48.2019.09.03.03.04.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 03:04:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 8B0B6AF70;
	Tue,  3 Sep 2019 10:04:06 +0000 (UTC)
Message-ID: <1567505043.2878.4.camel@suse.com>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
From: Oliver Neukum <oneukum@suse.com>
To: Greg KH <greg@kroah.com>
Cc: Julius Werner <jwerner@chromium.org>, USB Storage list
 <usb-storage@lists.one-eyed-alien.net>, Dan Williams <dcbw@redhat.com>,
 Alan Stern <stern@rowland.harvard.edu>, Kernel development list
 <linux-kernel@vger.kernel.org>,  USB list <linux-usb@vger.kernel.org>
Date: Tue, 03 Sep 2019 12:04:03 +0200
In-Reply-To: <20190903091953.GA12325@kroah.com>
References: <CAODwPW8gTZ_2WEc9n=WJ2PEmQk2anTQYfwQ-898+kOq6wsjnZw@mail.gmail.com>
	 <Pine.LNX.4.44L0.1908301337150.1459-100000@iolanthe.rowland.org>
	 <20190902164724.GA22619@kroah.com> <1567500374.2878.2.camel@suse.com>
	 <20190903091953.GA12325@kroah.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
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

Am Dienstag, den 03.09.2019, 11:19 +0200 schrieb Greg KH:
> On Tue, Sep 03, 2019 at 10:46:14AM +0200, Oliver Neukum wrote:
> > Am Montag, den 02.09.2019, 18:47 +0200 schrieb Greg KH:
> > > 
> > > This should work just fine today.  Add a new device id to the "new_id"
> > > file and then tell the driver to bind.  That's pretty much the same as a
> > > "force_bind", right?
> > 
> > That looks like a race condition by design to me.
> 
> How?

You have one of these files and potentially multiple devices
to be bound. You need a locking scheme. As soon as the acts
of specifying and binding are distinct.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1567505043.2878.4.camel%40suse.com.
