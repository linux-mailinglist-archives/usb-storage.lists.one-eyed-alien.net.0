Return-Path: <usb-storage+bncBCZNB4MJSMHRBUVM7G5QMGQEQJGSNII@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id C83CFA0585B
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:41:23 +0100 (CET)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-6d8f78fdad0sf250527186d6.2
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:41:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736332882; cv=pass;
        d=google.com; s=arc-20240605;
        b=Qh/WUj7RPMlfUa+fhO3u6TeGYCCzoBGQKeqWbkslHQGgmPKUdsEZppTqreP7SOaxQX
         AIF+F1WvB+MkqkthweSw3i6bfwLM9i2PDaxo1nKnFsteP1UPO4yznno2oyH2YNfY3s3a
         SH3DAvDP70i14jebnI3LtLDSGBhtSt+Be0zVBNPOubUkEGHUF3cVq80wudZSnDu3uFmi
         VIKFb8NgBGU17rS0zzAc0+TUNa8DWY62h9J/0zHQZ4fGaUq5qXRfd0dC+dE4AOKT6IA+
         XthtaWtr/z0ylRAodlZB9UbQChHCt3estaCmTHlbngsd6XgvdswLS8BCG3MhdjMd7/+3
         Ko5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bvQl8z0N8N2FytjooLBxHtzzMNQWv+27KldH1UB4jWI=;
        fh=7Z6FqpSWxvzwtcoGqmAHNLy75rhA8q57b+HjYVsvdzo=;
        b=ZWID8IZIXPdcjNwqAQSURyZ0L1j37ciJJPsvE1CmbUxwOh+c1krTDVWZjKzjbHrj33
         mib2NW+iI83n9JZB1wWXpFJ5SUraGRjhjmFknwyW/VNpB1L7p39Lqixv8Sv3RNsLSSnY
         7YY8qtuKARtt/LYUPszJ6C300hm6QxKfz0Nbd15qWDslp9BOUd3zj/+fLZBo8tVjTU/a
         c/DiByNR4SnUrOECd5d8MHtByqn/eIRzHyczHGdo1ek/WnWS8yWIp4fj9jyqhg2RYKpb
         SR0lLWWh/rzxN41IJJp5ynAfMSk5mhuMZ2fjo1h/KTAsvVqxQULp0nYCh97XaawC64al
         5BOA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fm9+LeaI;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736332882; x=1736937682; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bvQl8z0N8N2FytjooLBxHtzzMNQWv+27KldH1UB4jWI=;
        b=XMNcAFF0YTOxT8MCE1lbpp8wjXutIEh4LaYsMeYXazCwKpyxZWIGAUl435yWnGPewb
         QgL70strXBwKe/vlO7QosOcrw326mhlP8rSP2MFHCsD/O7enTcZ3ZQfAzkG8lBUYEzMn
         ZPdzDuNNRl4DARJa9+g0A41rHHs38MSbwCU6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736332882; x=1736937682;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bvQl8z0N8N2FytjooLBxHtzzMNQWv+27KldH1UB4jWI=;
        b=R411aHPHwOEdlD2Nx+8LVpll1Km31Pap/wgDkulJH4+7/1p0BxJFgrXcB7QNjCLE+G
         89Qk+Fk7UT1gWuLa+VNIADV1bVLv852G7qBqSQN4RQCNOsj4BJTEP3QsGgonB1NofZqO
         uRWEL1g1jzNdTx1bUsys0X8CfPkXmtBltqwB7jnn2FNpcmEZK3q123xZflFQWRXQan2m
         y7K8tV2iIAdD8JFZMmc8152twAy8UngIqpFueaSJ4EUaj4noVybZ1JB+phsJrxR1+uvC
         RP+YMn/fmzJxHoMbmNXtGiYaM+h7TOKsO66lE0yBFOQil+grqm+7x9FmsLBXoaYIf/C3
         9mbg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVEBU062M9HEQfpBQTw2iwAgItwJaCichDEbX1xbY0QWPkgVLE1v+0jm1YVK7CWOkGj67X3Vg==@lfdr.de
X-Gm-Message-State: AOJu0YygFGdoLYvzJ7tO/g0AsZTDzC4vxFqvnKB2jfHjl0FfgpH98sdk
	vh5xBARmVM0WxNxFgAWUmuYZ5RuQ8gAL/MedTqbrSNHlzvl3pvvo+MB+ORS8Vaw=
X-Google-Smtp-Source: AGHT+IHS2uTmS5h0Y4EN2uzc0+cjJrWogN0lj47r57zPU+D22t++wxmsmbhVFI534ovtqqGKrtMedA==
X-Received: by 2002:a05:6214:31a0:b0:6d8:f7cf:a12 with SMTP id 6a1803df08f44-6df9b2ff012mr33841386d6.45.1736332882618;
        Wed, 08 Jan 2025 02:41:22 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:480c:0:b0:6d9:832:c74c with SMTP id 6a1803df08f44-6dd15481939ls78257336d6.1.-pod-prod-03-us;
 Wed, 08 Jan 2025 02:41:22 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXUOBPPpdeqyfveeQkoqXQ9seOT2rYn+PXlEfNK2VnbgDWlKzT/VkNZ4yVv4EJamIoAIH1+TmlWS7BktA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:268f:b0:6df:97ed:54d6 with SMTP id 6a1803df08f44-6df9b224a19mr37347656d6.21.1736332881817;
        Wed, 08 Jan 2025 02:41:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736332881; cv=none;
        d=google.com; s=arc-20240605;
        b=Au7YEuVOOprYUoTZ5FaY/RF5+zyvhdpSacmZbQlozXu8IhE8IbuMr8YG6DZ9epRKEf
         q6RI0i0n1PG4laOATq+I8hlWYqz0eKQbdY/CyoPaRF7JUVpujn+3BYSRYQk4Zk2091Bw
         HL1lCPDtrHh6Ad+toFW5VSdQ6scFEii/8oXEHqElI4ke1WHuHJKJlbteXh1ZmfL3ir3U
         nLKcRNDCqe5lf6nlL3QTNxjPqWCA9NYIrNjm1BOoaSQ/9Q5qUhS6a4kc+VPJxKfztL8a
         Tr77gAPBjBHa3WzSUq7vBFvjDGNyQW+ykRk4n2HdPjnpTA1bq3jTzT6AomJcJ1JQhqp7
         0SwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=k8suUcFwm047THkxW2EWlIrmlU/5tS7q0mJJEpCt/ws=;
        fh=qxJjebJ4kXQxwqDHz44qjxVnY49wm3hZvrgJ6gPRbXw=;
        b=OPKah7hmVy3OoS+UZTzkUKB6UCg1RdrjFo7mfAC+F8IiemaIAna5GGhXk00LqsyjBt
         s4piK3RW8/JMpWwpVI/v7uCG8ReDaHh7TGeON1z/V3rTst2yy0pVuEwrFFvTWpTp4ymj
         4hP2PaRenUCu4eAfDDPX1eMtnzikgQGV6J5UKIsnJuTKmhOc5AlzV7zsJ3Pctys0cqa4
         Ne//vLLEL6Xbp/hyZhHkkmjd4KNCdOxLJrJfE2B+IoMCYqSL/w1L6ZQoB0jyibPl9ijZ
         mlFuhTNWI+9cIDh8WFWo8XjqYUjhavc349AN0jYN4+r4bLYQq2imUgO8ZnwajDV96+ML
         FBOQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fm9+LeaI;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd18253378si467833536d6.374.2025.01.08.02.41.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:41:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-658-0XEfdVjYN2K8E-U3H8I21Q-1; Wed,
 08 Jan 2025 05:41:17 -0500
X-MC-Unique: 0XEfdVjYN2K8E-U3H8I21Q-1
X-Mimecast-MFC-AGG-ID: 0XEfdVjYN2K8E-U3H8I21Q
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 45B8219153DB;
	Wed,  8 Jan 2025 10:41:15 +0000 (UTC)
Received: from fedora (unknown [10.72.116.74])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3D08319560AA;
	Wed,  8 Jan 2025 10:41:08 +0000 (UTC)
Date: Wed, 8 Jan 2025 18:41:03 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 08/10] usb-storage: fix queue freeze vs
 limits lock order
Message-ID: <Z35WP7rXeF3D9MZV@fedora>
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-9-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250108092520.1325324-9-hch@lst.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=fm9+LeaI;
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

On Wed, Jan 08, 2025 at 10:25:05AM +0100, Christoph Hellwig wrote:
> Match the locking order used by the core block code by only freezing
> the queue after taking the limits lock using the
> queue_limits_commit_update_frozen helper.
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z35WP7rXeF3D9MZV%40fedora.
