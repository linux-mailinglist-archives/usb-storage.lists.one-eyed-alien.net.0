Return-Path: <usb-storage+bncBCTPRFE7TUKRBWGQXDVQKGQEPKDKCSI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B14A6429
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 10:46:17 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id c23sf4541374edb.14
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 01:46:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567500377; cv=pass;
        d=google.com; s=arc-20160816;
        b=RHwO5rdlThJWgMNhwGAPhA5qZ3uw81+/PwgRJu27knTCdv6oLw5n3rTTWDT9JdSrZw
         UHO7rRmXIHWIVlY/JUEHLRXaYL2mF722KWnvgTYteVUUTqIha8wKqJOEexZOQrEbbrc6
         JFKKn/o0eh69u1tY8TuItQ40BAW3slORyIrElhHGhycNpAJ1O7HQTds+lSknokGFcLWs
         53cCeEnUIwaaITAYx20TEe7rjGhcAOEZbFTFYwn7K/b1MWWATxQMkALkk29dgPXfmzyq
         mzw49OzBj//HyT6M23njaVcxtP6rB+98Gk5R9CAof7uilwCBw7IXhzRAs4FkViskIspR
         pugQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=ArJSa7O7rcdBjLceTME1oxsARrUEEWJ34AFoCp7Albk=;
        b=aCNstA2GW7BFUeg3DYOeo30EzeWemV/FJa27AuGMILoktJ+9Z81RCUI2OL1qjDTZ4a
         Gkjd22XEeU/CMkBi02fGpol3TNJowy4an832F5xJSHxiMLZ4lYaarIzOIDNEIYIeGS+H
         DpVVpEB51hHfQS9q8aCZyTXs4N5Eluk1My1lQGSzjXM/1wRZoQ/58chW6v0Db11dQgZG
         kyCAQxtZzUCeh2YrKhPsyUAAE+yvXfWHp2Mh1N2jJMhBxDIqmg7r1Q642Q+LEiKPlHSm
         vksqgoZP6MdqUoyndcbSWDHpwJ5y+Tk/Ka8vKRRiHOp3vejp69SRDxJ7ig3EdkFP+OcB
         hqMQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ArJSa7O7rcdBjLceTME1oxsARrUEEWJ34AFoCp7Albk=;
        b=DgPBe1NnTvXKZShXxCHR+C+d1dlZsLH9Rsk6QlJIdqeeCLa11j6Rx/PtjHlDnp8uyZ
         LpuerDuZ1DQmPviqvjT4OUSCjpOX24E+TT/vbOcVeZeWohTtGCaQ9iYJVvOTFrGS5tl8
         6TBQaUxSXPzVhaPuNh652wsbxyYeRnN2Tk0iI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ArJSa7O7rcdBjLceTME1oxsARrUEEWJ34AFoCp7Albk=;
        b=lczamlY5KmKyw3b0BP+zarFOCGwiEn8Y1LXYhb0AVN/SUN16HYL2hy7L9FH/7MFmOS
         Fs3dOGrgtiP32PDaQ5rBdsSmC5xPad5trEOJSXiEnUnPYLBTTn0S0229dbWqHx0zyozi
         kdg6huA9gFUj0Fr9m7Tf52/TABJ22cI1lCNHLSBASJ2Gf7hqVxyT5isD/HBwFGMd9sV0
         M+8xV1Z05E5Mxq2MdmDEWO0YWS06shhYivPH9fwoi268A9dPnhyvnuPMYIEw04rEtWI+
         dbYYuU5vvo++TQpql4qEgzvvEkmZgyW9+iOVh11Ha5kPQPSw2kL8fWWDziUitquQmsZ3
         FbuQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAX22A0VUStCc+/T+C+m6gZZGLKnyW8WGkgjvLlrW1Yr/AELZP6u
	z76PQELF92HoL+K13ioWv1TcgQ==
X-Google-Smtp-Source: APXvYqzrMkFr0iiRwJWIlWjAL1og1I2Cu5Ay1C1jgHqT40Ry9mzQAvFfSPPStqJQBc3R4muV8rZT9Q==
X-Received: by 2002:a17:906:ce48:: with SMTP id se8mr22429592ejb.98.1567500376954;
        Tue, 03 Sep 2019 01:46:16 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:94ce:: with SMTP id t14ls5162458eda.7.gmail; Tue, 03 Sep
 2019 01:46:16 -0700 (PDT)
X-Received: by 2002:a50:a147:: with SMTP id 65mr16300018edj.241.1567500376147;
        Tue, 03 Sep 2019 01:46:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567500376; cv=none;
        d=google.com; s=arc-20160816;
        b=oV0IyG6jUTcR24qc8QmokZv8kfoVBHmz/ix53KT2/Kvjd5DKHQ596XEln6jnT9WqTc
         iBz0TLB0zFKU0bzv8abfCprzOkm8u0q3wR2VWM2MUHj/UcfCU7k82hAC2OHiTsebhXtG
         ksPwiLxPN1Lh+i90U4mzBdUItOu5GDmNZIzY6hbeAOLDawtLG2YXZNRAfY3e1AaKnX3f
         l9BGbwdtOz5ZT4Vdsaa4jPfvXl00xrkkIE0HqGhz5kJ1x9zmAiiXuxf4p//4pO2LTzf+
         r2maJ1e4tbajL0YGpxqfo1BnxRkM5mgstNZNqv7xAcybobyRxFMzuKsijWP+eLRiYqfc
         VvzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=6yi2f1pF0tTHnhR6RdDcUEqoYDJaKBSNTqLwkRm7KG8=;
        b=DuLuOCF27p8pKp6SzpY4eRfBUx/D7ORvBuFe3Heb0ImwJr8Glt0Q4tMVe3LMi7l1pD
         dPc9ezohvsaHSf23mkykNM4FebVGieB/WCpM4dr/IePf0rio74J3FBzS5K+e862OfDsp
         LYAJNypTAckjIYr9i6ZPg0aZueJ7Bwrh5q7qiPDxqqfC+1ytvjXwWjd+2NFkuKpe5kE6
         CD/StOzOFvh2MDqNqhQGzcpWLe24otd212TxS7GH8qLnFhD0jLAIBDRPj0Qg598e0mrY
         sTNVcWxnp/kpKUxOZo5C52SmRxOyJV6lag+a1pYmYUShsX61Q28imkUpjZdnBCypeiWQ
         Yy3g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id j34si7637860ede.10.2019.09.03.01.46.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 01:46:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 990FBAF62;
	Tue,  3 Sep 2019 08:46:15 +0000 (UTC)
Message-ID: <1567500374.2878.2.camel@suse.com>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
From: Oliver Neukum <oneukum@suse.com>
To: Greg KH <greg@kroah.com>, Alan Stern <stern@rowland.harvard.edu>
Cc: Julius Werner <jwerner@chromium.org>, USB Storage list
 <usb-storage@lists.one-eyed-alien.net>, Dan Williams <dcbw@redhat.com>, 
 Kernel development list <linux-kernel@vger.kernel.org>, USB list
 <linux-usb@vger.kernel.org>
Date: Tue, 03 Sep 2019 10:46:14 +0200
In-Reply-To: <20190902164724.GA22619@kroah.com>
References: <CAODwPW8gTZ_2WEc9n=WJ2PEmQk2anTQYfwQ-898+kOq6wsjnZw@mail.gmail.com>
	 <Pine.LNX.4.44L0.1908301337150.1459-100000@iolanthe.rowland.org>
	 <20190902164724.GA22619@kroah.com>
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

Am Montag, den 02.09.2019, 18:47 +0200 schrieb Greg KH:
> 
> This should work just fine today.  Add a new device id to the "new_id"
> file and then tell the driver to bind.  That's pretty much the same as a
> "force_bind", right?

That looks like a race condition by design to me.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1567500374.2878.2.camel%40suse.com.
