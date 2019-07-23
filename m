Return-Path: <usb-storage+bncBDUNBGN3R4KRBM6U3TUQKGQEOF3QD4Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 974C371BEF
	for <lists+usb-storage@lfdr.de>; Tue, 23 Jul 2019 17:39:31 +0200 (CEST)
Received: by mail-wr1-x445.google.com with SMTP id h8sf20900624wrb.11
        for <lists+usb-storage@lfdr.de>; Tue, 23 Jul 2019 08:39:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563896371; cv=pass;
        d=google.com; s=arc-20160816;
        b=z7Xm0BnnQdoaWAf+qfA7jcpQa3DqCujRNlpTjjfKnt5Eb1x0wtnHef6h75ZgRKL42L
         qhMkkGaLvXFR9kbSyZiKMZ8CgLWdmfI/sKmRq51IukJCgpReJWkIE9onGXZfcZGwRyqV
         +IG7cOtEYdsS+tVlINVoLou0azSClpJXGdSY3A6f1W+7Tac8C6e+YU/ZW6J4S/g7FkeX
         Rmf57DdUjWCYeuUitXLxLzRVVMIDKUZi38imXIgt4WZQTr+9Js6eEwFqrb4rxOyP++c3
         lhl/oE9EToW5pLwSEulwK2zAL/Obsu3fRZOejjIlNxA0+rPrtIiQjaSzjQ291H/uDcYN
         c8Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=4pEtFmOtT43rkKSGBWTYzCQmJtHUaZUXEDeXf7bdbyw=;
        b=VvsidRMXFH/HbM1fSIrCCli4yQAUu2+YIFgdDohWVLUWUTzw3deAmlFrbLLdX8OOAw
         OgAoMqKzx9ZNpo+8d0xUqZVIHWKRlESAGFom4lM63guE6UL7C41UmfID9GW+HmWk+AZp
         +k97uto2blfGB2kBpRBr+CSyo4CF/qSH1yG1BQlVc+0qHtEPv648TDeY+ZSAk6iPG2xc
         gfxhJbxRtezzwxIdglFDjEDGdjYK+NqmHapxRgeb0ggsacIsLl5uZaPGu3IVciCr3sq4
         gv7kD2Kjld+E1Uc5i/dQtsCDlE1o3pmxvpjJbtcQU5dYjdJ++4LN+7BVaT+06AtI+hnw
         iwWA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4pEtFmOtT43rkKSGBWTYzCQmJtHUaZUXEDeXf7bdbyw=;
        b=gh9vtG6PCBAQ0WkDiLGQSUbsxYDJN2Ev5NYxG/U6LUGdWRShD6QfLNTLNAJkayxGBe
         +yqy7LIuvotBW0fSV9kBp+QyCqtGC6YPvKb8lsEcK6OLahdrXsjB8qiLgRDTKXSKnnJm
         A4YZ8q+xlHdSTkfWxVdnhQY/WohvJoceQVCDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4pEtFmOtT43rkKSGBWTYzCQmJtHUaZUXEDeXf7bdbyw=;
        b=f4ISCi3sfxB9te44V8JA+yKvpzu2dZz+cAteF2fiDLSFERALx4n3vzUQ2chtygR3yO
         heftOr7XxPuw2cLdjW4WVfvnMzvXn/AJWzb1p6pwjld2cinPVohoKlAo8LfYiqiF2Qjc
         mCBtWK2ttP/y7pKW4wV8QHtBEpnOtaNXcL4Ddlv0MOS0atVRBMu1Wai5tmwgel/kJ+nr
         wgg4QTaGtZn3aVI7cmNhy+QxTH3z+AqfWBcTvOc1AcZE/C5Mtdr1875A+WCemIPAwCX8
         JFxTvMS3HUeP+4UiJUueIYKvobcyi42c0F8ey9x1G+NSzAZUDI0jpaRJU0rFRNKUsTSU
         QRjw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAU7jFqXAjoQpLGp/ynSF6Dw02GN4Mhp/hU0VSAKD10M3+S+2CKG
	b1U0a0cdCbUxQywJj9iE0zg=
X-Google-Smtp-Source: APXvYqygtTXkmTuR2svkmlr8XhgTktEREUhr88LuzF869MNQXiivaI4YgLItsvl0ZcSG4jaLxaVjtQ==
X-Received: by 2002:a5d:6911:: with SMTP id t17mr12962817wru.268.1563896371359;
        Tue, 23 Jul 2019 08:39:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:97de:: with SMTP id t30ls10422890wrb.11.gmail; Tue, 23
 Jul 2019 08:39:30 -0700 (PDT)
X-Received: by 2002:a5d:56c7:: with SMTP id m7mr6242532wrw.64.1563896370576;
        Tue, 23 Jul 2019 08:39:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563896370; cv=none;
        d=google.com; s=arc-20160816;
        b=xwnzQXH2uvgYWWZ+nVWvtz6JxISU42SQKItzcb43oyT30ech/gD02Io0pbi4OwMwf0
         5xtP8KwINMbJ7c50Uy09COwf4fPS/1Egc9wihQMxdpvU8H3Gvf4hhZkZKWUdggLYDBmS
         xmVnnADxmElEVZTO73YVgcLxlp7kQ1GPbYBLXT59Kz2+uVofSRMkpgBLx3qFSFY7Uvzv
         7UqZzamW5M5tKsIin3o9Zkc0k9RC1JpgA/Nz5iglG2nqmPniK///8y4ra26BCjyNA4d1
         ddt212wnjMqUjfnQHYqyPM7scU2+SgJNREF7nKBBAVjDcXgnZdcGiddfB04beKZZAZ0+
         mT8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=M7NmYC/Iylm9myghHwqILim55SAUt9QrM+UZYk0eJlw=;
        b=zpqapxj4dH/+kEWKdzx44FRfzRdPoOnDtLmvuYEU9OyqidiWwDhENMm4Yks6Mlehsi
         dk5eBMbR5ddpctlbpvNXZZWnbiU6EgbMZdX1fmMYCl2ixR7qO+QnjYB6Itqec6It7dcZ
         jP2GIVjXZsh+m/oIzITCln0WPCLRpuMj7H6zPsH+X6JkDn0/kzMmSkKcAjTD0ciE6adj
         IBCcgf0Q02uAagXJZX2Qicf/FM5z4ytJQy691gd6A0UlqCP1HFlq03WNWc8KBSyxmT3g
         vrG7iIjKM7AeyKrk0EruFNx75gC0Ej3zsl/fv06hNKNESFhVIXVa4JGwOR86dW9NLYre
         48zg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id y9si42650945wrh.107.2019.07.23.08.39.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 08:39:30 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id C0CA768B02; Tue, 23 Jul 2019 17:39:29 +0200 (CEST)
Date: Tue, 23 Jul 2019 17:39:29 +0200
From: Christoph Hellwig <hch@lst.de>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: stern@rowland.harvard.edu, gregkh@linuxfoundation.org, hch@lst.de,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-renesas-soc@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v3] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
Message-ID: <20190723153929.GF720@lst.de>
References: <1563793105-20597-1-git-send-email-yoshihiro.shimoda.uh@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1563793105-20597-1-git-send-email-yoshihiro.shimoda.uh@renesas.com>
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

Looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190723153929.GF720%40lst.de.
