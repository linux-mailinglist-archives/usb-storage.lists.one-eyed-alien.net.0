Return-Path: <usb-storage+bncBDUNBGN3R4KRB4FN4DTQKGQEETCGLLQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF3B36497
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:24:32 +0200 (CEST)
Received: by mail-wm1-x347.google.com with SMTP id p16sf684289wmi.8
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:24:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559762672; cv=pass;
        d=google.com; s=arc-20160816;
        b=WHq/RE6UCotR2MgGtRjZYXEDsf6nt5GSfGd0mNTTMU/GdL0inzCkYhH5nsmVtvKa9/
         /K5Hukwyjgv1PFM13PNCpqqp+AUKvsVBJWW7Bz1dHyaCWcajBCebZW6gEaS2IpBm5QgD
         gUwHqH8ILVkJtMRa6fYg4KLC/UQzRwbg+kmpHb55stnNZIhSrmdDI4BEuysojWdsRhtw
         WrD7Z1rodlItOM66qkLnyhcB2J9BYJG20V0oV+sDZVtvauAoOcAkFnAT/lJ+dYuJsXUw
         KMGoAvRS5+w9PnpFoG9VjcBJ9+2awVbNNAydrPfAZHKQMEvQy0a0jLzzNtJSheuM/eKG
         QdtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Rqij+af7hU5fjIgs+66qVI/vE+QEblRMin5j0OWn4+E=;
        b=R/mBK6Yt3IQgWfZGn375v8JQFKaN7/Ci+aWUPgsYmAAYNWYlNsLf693nPECMpqvDrX
         8akKCGg5FkntiNz2+UjAt3hat4K3jfwUcNr+GtGF174UfC/PPilu2zCDifShtJhpSeIu
         YqWzz432uuW5h4yWiJKjJG+997M0vothR6HJRwGo+L3G+Btc44SpDDD1glCyuTtjb97/
         6SBFajXa6EjINYy9tUzP/fEk1iw6U5z+d8yEmhyPfsgPOl8gVkrhOxYqyYAfM8u3rpcG
         DT66G+kCqcxinp9Wu2LNu1Hwu7Lbf+1cl2rDLaZNBgJAzdQv+G79p5zj/zSenOjvnqNE
         m7kA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rqij+af7hU5fjIgs+66qVI/vE+QEblRMin5j0OWn4+E=;
        b=jnyhingTFW50yVDaQvCllhqEaljO6GUqDJDlxr5PCmVU5x7Ii5t86jjzC0stCmp4b8
         5ZBA9HGCYk1SYYFP07H+aiXz6ChS7DLC1IiQplvgAHzYRaFsrVPBHVylwLrxLwBF6IGE
         S1DNhGiX1d/I1oQxnfu4MeVQaWD7zOH/G9y4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Rqij+af7hU5fjIgs+66qVI/vE+QEblRMin5j0OWn4+E=;
        b=ROi1VHV6A/ir94FGOxRSRANg9Hsgl/Q3uaBIlIxAkbf/fSX/UD+KKJqyHSXL7dZzSW
         lW7AUX5X4SUC6ECsHY9X4vw3Fg1NAw5aHqf8ebJUwAodZ4vpKJDrNcpe0GCFM7JTto73
         vSm/2uZip4QNcg4Q/iQVqd8VZ7VzxBjdtreDlnvF/wUkVzPVJabeAqtbqhzBvxoTB4pb
         YJd2b7l3AC95c9Xu9EfSf6a+UGRcJzI2Wl677eKzNvy5yZpKtvmeamBU9IA7hQLnTEqq
         hvBMaS73pcSc726nS6qoDy44U/k93mMfeaQ+u0gHwBdoyc8TqBnNeopjYA0X5A0bfxXF
         yRMQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWu2WdGUtgfsKv2k5vlDlbwyQv94IJmkfba2aXQLbWkesHnYe8o
	HwJAA6rVdvukK53jSYyc5sOIrw==
X-Google-Smtp-Source: APXvYqxbXqckhitsKia5bJ80RfJIhICaQuipnBwCSNa6U0D/oGzaG7r8VGaFZikNbatx3OvxuO9pZQ==
X-Received: by 2002:a1c:750d:: with SMTP id o13mr11055495wmc.35.1559762672190;
        Wed, 05 Jun 2019 12:24:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:ec02:: with SMTP id x2ls713722wrn.6.gmail; Wed, 05 Jun
 2019 12:24:31 -0700 (PDT)
X-Received: by 2002:a5d:684c:: with SMTP id o12mr13312797wrw.305.1559762671496;
        Wed, 05 Jun 2019 12:24:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559762671; cv=none;
        d=google.com; s=arc-20160816;
        b=EbAN7vdWRg6WoXw/bWbUVdqH/2XEJv/CHnEH5jnNMoTbQwV9IfNFaHy+7EFEGkI0+o
         KLD1PsO/VENTQ5Ak+3glA9Lx2aGqsbF9BSjuMUaEC7rmYKUEAYJ0pZd6psLAH0T4qfM1
         Kp29MyHgjlb8iX9+x0GGVtJE2JXriPf80gBQ5l9X0twKU7xJbUw0DUHqWDh4hBvpRSK8
         OgFyyR4AEOJQWSeAcFGTXJ3gkWr7AvIq/IdF+usegpc1K2iPGuLLnIemYpPxSPO5YA5g
         Tqyw96TPhkMZ73eqvAoxhefVOhEZjpnCI8wcLMRqF5oKCctfJbMXQZ/ZR6up6Ng13R+d
         hCog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=O+Gwc58Gvj5Kw0VzTyHqUiqklnDeDpU8yC8mmuk8W1M=;
        b=r7HLPYq1Oya0fwZM2RAVd3/rawl65icgh/Ofs//dnw9j3mPI2pyTyti9jWg2BQRz0o
         qtdWopvg5AvyHQ/rxpVkHBY7kc4GhqcpW7ZtG1G2sb4B4/Y5wZlIiOBMuHjiPugpb2Rl
         by6AnhZbmZTzOxnz23zWXh9ZIINnxuV+e64o1eANdoJe4n/NlPplfd+bYuFROht0qG82
         gOXmwU7iQUKJeGvFZ6kja5GIjSxGox2hGhMd1U6oH36LiVs3HdUvkJ4ZIXwlvyg8JbAM
         FoJq6ZF7ZB2rVEkZcVY5oGPeL6533Ly77hLnSu55ytpBCkvglJ6wGKIj4weCO5ttnYQ8
         zUOA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from newverein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id h3si15926158wrm.282.2019.06.05.12.24.31
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Jun 2019 12:24:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by newverein.lst.de (Postfix, from userid 2407)
	id 3B6D0227A81; Wed,  5 Jun 2019 21:24:05 +0200 (CEST)
Date: Wed, 5 Jun 2019 21:24:05 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Christoph Hellwig <hch@lst.de>, Sebastian Ott <sebott@linux.ibm.com>,
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
Subject: [usb-storage] Re: properly communicate queue limits to the DMA layer
Message-ID: <20190605192405.GA18243@lst.de>
References: <20190605190836.32354-1-hch@lst.de> <591cfa1e-fecb-7d00-c855-3b9eb8eb8a2a@kernel.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <591cfa1e-fecb-7d00-c855-3b9eb8eb8a2a@kernel.dk>
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

On Wed, Jun 05, 2019 at 01:17:15PM -0600, Jens Axboe wrote:
> Since I'm heading out shortly and since I think this should make
> the next -rc, I'll tentatively queue this up.

The SCSI bits will need a bit more review, and possibly tweaking
fo megaraid and mpt3sas.  But they are really independent of the
other patches, so maybe skip them for now and leave them for Martin
to deal with.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605192405.GA18243%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
