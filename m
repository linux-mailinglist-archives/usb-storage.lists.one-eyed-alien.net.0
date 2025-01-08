Return-Path: <usb-storage+bncBCZNB4MJSMHRBD5J7G5QMGQEOLKHNNQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id A535EA05829
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:33:52 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4679aeb21e6sf287165521cf.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:33:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736332431; cv=pass;
        d=google.com; s=arc-20240605;
        b=HoYUyG411LheN9/+dP53NkeGNdm8sKvUI2fRBN0cZXcC06tcEpEtSaMjLc3F+fdl8O
         xdeRtOyhf1UW83bzjpKnFi+r7WHG133PpxZ5AcIAzNRpIumWaKIMHH3uh7Mct3+PsQsF
         QxZMN9NPELyUoeVHXwDELG/GDCKZ4F6Ry1obmfSNHITYIyR/r53XoGAtH7aBQwgZM4Xp
         Zl/uq3jC0eL/gQYu3M9eoPXG2n7DPidX3PpI10WHR0kN/jon3aAObGriCdzy/o1pQlvX
         1cavhaBGXASzC+N3UPwJ4UaIuc/S+b2a/Zbg7nUeRdwr022SjCjzE9QKZF6ZzMHcOw0c
         yn9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SlIEw4sBxZHYsENxyzVpoDlehcQYCsiQGls7q2Tcpd4=;
        fh=SPUOOqVkDIhKmUjU8B0IC4+NEDZ9Hm0Vhnl7hli0Xbg=;
        b=bV2cV8KmhA6yok1FydtgCSdoLVvynL6oeLk1BpHxvTUEc8VXwjstg3q4pIq0fCdak5
         WLVi0VNgzk09FXjIF0jqIOLs//jsaEhi5N99Pndap8ZTYGFsG77zEF3C4HK5nkOno/b+
         rwTMq0LyDYx/hKR82Gine2InkzWbGaWve5Ogipiu2rimu9fGm45at5+BDHhSo7snL+5Z
         1vr9DM7u8me3zdKMTmwlPVDeSlIvCBV5XC+t4rAjEWOIYditqzosebQyYT6SZfst2fIu
         00CyYfj8efRfMH+OMFXOQLgwKbDhe8gd4CQZqLnIGlb6rKA/iFceDKs7TC/nlcbx+JtA
         4ZGw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="a+/YuC3Z";
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736332431; x=1736937231; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SlIEw4sBxZHYsENxyzVpoDlehcQYCsiQGls7q2Tcpd4=;
        b=hOdJz7KLpMFSeWiKaBZaVP2gnw0rIFKj8zd8FlvGu35ri3Ls6AJWwlQYt7sKemjdPZ
         z2tYIG47uU2Vzp2zXoPZ0DhekGYdVCAAX+zLaIZ2CW8FWOWS5DkXXjkBvKTzGTxAdP4L
         KxGSDeTfyTQ/LLny6OLsee/196v7aroA4VCVY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736332431; x=1736937231;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SlIEw4sBxZHYsENxyzVpoDlehcQYCsiQGls7q2Tcpd4=;
        b=Z78YBnWlnr0646GpyMhLId42h4fwW7BJZUE2IJ+qWAEMaCzN80t2pi8B1dmMahUZKC
         /hngvcKCFNqu8M4Md6AepAKDehbtrVzA/w9NSLO4A1CnEHc0ASMx0lKAnO1rPy4nS0ri
         MYCVzgjFUztSQTxDIXQOAEIMHi+5iJevQSgEMZmbZi7KlOFgmeTALlyTfgg83WNPgIR0
         4TDch6x87iSTyTLwv5fba56VRti8mljRh9U2GrGDmWAho+5KQRW8UcEWP8okiUwbnUJK
         KpmBCVw3Xzx4KYRLcnQOu8F5xPocjnEf47hIvAEIaBLDExpdMMyvleoWArhgbtS7VFk2
         Sejw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUHk8GV2bxI6e7Zr8OG9YMWLAavYlsxeQ796jN7IQKdM741bn5GDCc8UZseFqb4xWXTfa43/A==@lfdr.de
X-Gm-Message-State: AOJu0Yyl+YJUXxcCH719JW0SJAVstcwW+7wXoUpquEEqRsmn6Jg4sT4K
	Bs6Az2n8tDgI3URPFUifrxxkFi5rGIlF3DJnaZGWavAdhrB3svps0nlqTlgh1Bo=
X-Google-Smtp-Source: AGHT+IHnxEeLtKkvEBzYtmAnOWFBrf5RW8I12YUNhQKzHXiPZ5BQjm2QVYf95KTCdb3vvluWrilFtQ==
X-Received: by 2002:a05:6214:5097:b0:6d8:d79c:1cb2 with SMTP id 6a1803df08f44-6df9b1f4714mr40905546d6.21.1736332431587;
        Wed, 08 Jan 2025 02:33:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:5a06:b0:6d8:f050:cdf6 with SMTP id
 6a1803df08f44-6df8800b527ls26207876d6.1.-pod-prod-07-us; Wed, 08 Jan 2025
 02:33:51 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX84JFMDnQP/FfVwejUttgNFb1PLf3eFxHHxWiD2rr+aArfs8CadastgZi+rFRWY6AXS56DxSK1vyFS8w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:570c:b0:6d9:2e0c:56c4 with SMTP id 6a1803df08f44-6df9b1b4d31mr38760396d6.1.1736332430811;
        Wed, 08 Jan 2025 02:33:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736332430; cv=none;
        d=google.com; s=arc-20240605;
        b=MpjAyU4LH9BJpC1V3dAnVq5sQx/bASlxEDQSkY4h7qIgcz8qKV7FQ+0X0lQ6pNd/gj
         iEYdxS40n5PQXQT6U145l0svF11enSjAKS6BfD3JispxkdQ4ZhlDkMQp7wrW6+ATvgJA
         RLqT0rJFeNA9m8eDoLKYLby+XqKlVg9jRkQ3OYjuCJCYJDpnoM1Y8f9K5Foip4v4XzAp
         IyRcswGfzL/mst0fnydKn8iSLON1OEyaIpwPAjY48X4iRoIKMc+tHHuyeI2Pkf2baYFv
         WblZ78m6skMz9QuO54a698/JQY5qLp33LV7DEbA8jsnlLoJa5hjTtxDwoWY01WvlYRy6
         yRRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ssv5sraZs0pWcRroM+g30CQn3Ui595UuxeM0/77A8ks=;
        fh=qxJjebJ4kXQxwqDHz44qjxVnY49wm3hZvrgJ6gPRbXw=;
        b=HeSDCkeXaXdXO7r4gtobLK2gh9uonDCEIRXisDcI2C4HqWyyfOcJ6Md2NAezOJsRxb
         YiB1g8Oayg0e0UP+yBQxSatB21H5W1qXEPjemh8kejBlDk1eM6zsPzAC1B5jKxm2tbxM
         jRyroMWNq1vFnEyt4PwpP967AGp9z0HMnQzyrdfyWERNaOYRRQSscGicGCLSkEnw2fMw
         WJ0Rp/1uvH0Tvs+820E+RczeI6CSYR0MfZUhAQzWg61Fm2aJZPJ/Xu+mk4QjV/yXhtjN
         4c2gsjKPby/c9vrBh98VPZX7CW1VepQwqrbMHZ9qrM55KlI1gxGo/F6khTdlBkS0288E
         7GJw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="a+/YuC3Z";
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd18136bf2si505947486d6.115.2025.01.08.02.33.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:33:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-622-Xkn6sEqxNDWEm0i-nMmU3A-1; Wed,
 08 Jan 2025 05:33:48 -0500
X-MC-Unique: Xkn6sEqxNDWEm0i-nMmU3A-1
X-Mimecast-MFC-AGG-ID: Xkn6sEqxNDWEm0i-nMmU3A
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 25F1A19560B0;
	Wed,  8 Jan 2025 10:33:46 +0000 (UTC)
Received: from fedora (unknown [10.72.116.74])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0EC57195608D;
	Wed,  8 Jan 2025 10:33:39 +0000 (UTC)
Date: Wed, 8 Jan 2025 18:33:34 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 04/10] block: add a store_limit operations
 for sysfs entries
Message-ID: <Z35UfgUewo9xei9C@fedora>
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-5-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250108092520.1325324-5-hch@lst.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="a+/YuC3Z";
       spf=pass (google.com: domain of ming.lei@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Jan 08, 2025 at 10:25:01AM +0100, Christoph Hellwig wrote:
> De-duplicate the code for updating queue limits by adding a store_limit
> method that allows having common code handle the actual queue limits
> update.
> 
> Note that this is a pure refactoring patch and does not address the
> existing freeze vs limits lock order problem in the refactored code,
> which will be addressed next.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>

Reviewed-by: Ming Lei <ming.lei@redhat.com>


Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z35UfgUewo9xei9C%40fedora.
