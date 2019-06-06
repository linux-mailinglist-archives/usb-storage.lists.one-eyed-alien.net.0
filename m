Return-Path: <usb-storage+bncBDUNBGN3R4KRBS7L4LTQKGQE37QABJQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA2C36C6D
	for <lists+usb-storage@lfdr.de>; Thu,  6 Jun 2019 08:42:20 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id n8sf615164wrx.14
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 23:42:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559803339; cv=pass;
        d=google.com; s=arc-20160816;
        b=d+cFEJyuCh7d7r/5NZkvhaFpSmMJ8nxcwRYUXIC1GAxRdudFyt/m2z7knuvGkltgFs
         /OLs92ZaO9wh6LOGHYESQQyxEAfEupzYZRETsYwMMCxMwsSgiAM9j1jBmjQcfrov/2lP
         BuqhTUPLzN8uiWLBz23CnFPw8kH05O45gx1sOlmiYe83ObfLmOKO9T6DT1WtDld/Tuqh
         Lgi5iIonJAEZ2I4R5KA6ZJ8C2SO/sr3Q3jgBtHK1aiaI3DI8mEHi/mOshn45tMHbQMeS
         XPznjGuLj0PgVpXPcNjidGGJFWfz5U7gzHB3i3WhGZ0yagroIIOOh+HKEWBLmEPK4XrN
         KHfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/RReaBor8uuPcNlYnk7PdDi2n4ikQ2j+ZWqg4jR3zk0=;
        b=rn57h24TNcvjkXqZsL0fHVGBZE3X+Hz2Jr5JrxXFrkkANJckU4gHhI3wJvxIMO2Ce4
         apd6BpBS85bReBPj6ktWLTHxHepDv4xnaukHOsBYLWxheCT7vlUMH5eXoRKcsjKp6w0V
         8IoKN17MaWGX/d1p/PQl23a8xM6EuSRW+4sjsU5RAtFLvKMNkmu2YR/6/55i/lBXBNV8
         AgWH3QRQvIA5tdd4x6/sawdSJHdhm7+pab+y3/8/qubTbkpgLMHomYcCNb7qthyXIwc5
         pt6NtClmcFYS8x4GWS28RyLrPCO1VbTPU5MWRk95hKZX8HHRHqEP71/Ngk9MdvgqzZeR
         zv6w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/RReaBor8uuPcNlYnk7PdDi2n4ikQ2j+ZWqg4jR3zk0=;
        b=Gc8ZvUswiqirO2XW/YQnFO/Nt+PX7hWl1DqEHUwnDPC2NyESFy9ryQDQRYp+O5qpVS
         Z6H0xzWdH8o87/upUwso25ElnjApYFzjl0cE0i1iiGgXQKUb6zNiHKRXUYGVNd7HdJFR
         hwx6u2OdHOgpzhdFkpwfcrSz8J6vU+vRIxpPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/RReaBor8uuPcNlYnk7PdDi2n4ikQ2j+ZWqg4jR3zk0=;
        b=a3RhHK0XfESgFkBDMyqETiJoasdK+JKEAGUFygat07feBYNRWOlkDzz3tDV8blxiJr
         G3to2rxhvRkdG2eov360YC90A8Um2hK7U9kaRQGy0Z+7ex9XUuNwsGWg99N66O8fc+0b
         4HV63SoUpEwP0KZfSKVOpytehiGx5JiM+Z0FNl969WNQwSPhZpFmG2RBaCpTPQcke5sQ
         ajiDynV2cHc4u9lez07DJomo3kDnJxBCGosnqjveMYjKOXlLPkxeg7XMqzkqWhhQTrIP
         hRUG1M0avtg7eu0MnV05iuU+XmGSVI2fMeizbTi+cCg4k4eqpF8SPM3qxXf5Jxo/Kp1s
         9bPw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAX5/Sz9e+jRkAdMusameZwscasoHzr58ywZEByi+jkYCDVUbaTK
	Iq97xFxE5rJtxNjxibyuQ0kIhg==
X-Google-Smtp-Source: APXvYqz1Tnh/r8btAFY05LOBxUJYq7cNzUJ7rpifKUrNexy+63cHpsATtFZq0IQFcktWRSgrz/fYjQ==
X-Received: by 2002:a1c:c011:: with SMTP id q17mr13544999wmf.105.1559803339851;
        Wed, 05 Jun 2019 23:42:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:2944:: with SMTP id p65ls1352489wmp.4.gmail; Wed, 05 Jun
 2019 23:42:19 -0700 (PDT)
X-Received: by 2002:a1c:6a11:: with SMTP id f17mr23502469wmc.110.1559803339125;
        Wed, 05 Jun 2019 23:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559803339; cv=none;
        d=google.com; s=arc-20160816;
        b=p375jXD81hDN1Z2Vtv2LrCDR/IeEbe0hA2L6c1ZH4K0PDPuuZwwm+R6IooOo1dQLQq
         +76BDI04j4Ce8WSqXGqlnLQaEC9NrZbvlbp85OwxGbpWK2jHHM+OJxiVB9Zy7LG7t2VC
         hO4MhBZvm1fYNeq3QaoHKHlQzNK7vXFCmydodIKKhLNJa1eS1ROsWmvFUDCWfZdLq/k9
         Y3YxMW/eqTqOuVyyxZy4AoQnCXAOuiz67YuQzjxevim7Edj37Egy+Av7Xf9AggKFNUH4
         5pnPgT17xQ1EKTwK51EzgSgfN/0mm/+hs0rSraer6vOKz1IVFMaPwhs3xlEVeG6TvP8j
         kaZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=fLKx5xm05HXnJsC2zkwjImk68YwQXBaSU4CPBlu3fH8=;
        b=NFK1wuIGSTTmgVQsCVwGDYnIHclrPmenUsuGz6tHQH3Ls4xjejr8NLHvaMq2eqHcKZ
         BPB4Qxh0XH6jJlknnG+Jon5c1XsV/5LUyOKq2iFLqEK2or3kV7zWWY1gZpLDQVx4QnzC
         mafWsfJtPI0r3EjrQywx9BYltdDlwknlv4KnREeviVXRSjbBTiOEdxV29pV31sZYmUoM
         rMNNO5BfFNWR4TrMMKhPJoFStdiu30xxkYH7ZnPZLsaKRO1H32tB58dummtWjTvwzZR5
         n3bIuitvL1f3TgQAQb43dq+A8RfkqeT/i8y3/JMSANgOK2owFuV1T6dbX7VtUUSJ5UB7
         B4GA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from newverein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id k28si932220wrd.417.2019.06.05.23.42.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Jun 2019 23:42:19 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by newverein.lst.de (Postfix, from userid 2407)
	id 9AB2968B05; Thu,  6 Jun 2019 08:41:53 +0200 (CEST)
Date: Thu, 6 Jun 2019 08:41:53 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Sebastian Ott <sebott@linux.ibm.com>,
	Sagi Grimberg <sagi@grimberg.me>, Max Gurtovoy <maxg@mellanox.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Oliver Neukum <oneukum@suse.com>, linux-block@vger.kernel.org,
	linux-rdma@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com, MPT-FusionLinux.pdl@broadcom.com,
	linux-hyperv@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 10/13] megaraid_sas: set virt_boundary_mask
 in the scsi host
Message-ID: <20190606064153.GD27033@lst.de>
References: <20190605190836.32354-1-hch@lst.de> <20190605190836.32354-11-hch@lst.de> <345c3931-0940-7d59-ebc6-fa1ea56c60ac@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <345c3931-0940-7d59-ebc6-fa1ea56c60ac@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of hch@lst.de designates 213.95.11.211 as
 permitted sender) smtp.mailfrom=hch@lst.de
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

On Thu, Jun 06, 2019 at 08:02:07AM +0200, Hannes Reinecke wrote:
> >  	scsi_change_queue_depth(sdev, device_qd);
> >  
> What happened to the NOMERGES queue flag?

Quote from the patch description:

"Also remove the bogus nomerges flag, merges do take the virt_boundary
 into account."

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190606064153.GD27033%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
