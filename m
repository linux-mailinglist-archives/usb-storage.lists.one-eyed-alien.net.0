Return-Path: <usb-storage+bncBCHZVHVFVMARBVGP3CYAMGQEIKHWEZA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EABA89E9F5
	for <lists+usb-storage@lfdr.de>; Wed, 10 Apr 2024 07:47:01 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-56bf2d59fcesf5299712a12.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 22:47:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712728021; cv=pass;
        d=google.com; s=arc-20160816;
        b=q9aNcjnFg8ksZoeXzcAqV4p2EBwnJUGcgLo5JLruszwhVuthIiilqA667FK3O7p9R8
         QTbNyMVMShgnrTDALcm92OcEa+MosqEqxyfsW9YNwfuXxeAOkry912ezfL4kGtkJAMEa
         5TrZJcgiZNnrV7y+YWuPDxEeqp/vAZX83KiZeRLT4JXv/pIpGqlqRRAHBwGsv85RwbYx
         FxYCyt+qynFjtjnxepqY3R3lWg3RgdsUcU6gqAeSfmiioqTYhcXDIhRfkpbhoZR9U66H
         N1fkuD4v9XgjOfaMSe67+thFYiL+rqiWOv+Q81BRJoSai/y9r8YZVd1SC890m4Zuorru
         /PPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=P90kdGSoTh3jHhcwDprzYicwmC8L0tM1fKuDpZl0VGI=;
        fh=/9/ATC3jq+Rp8Ta9K4IalzuHThRNoRUnMGF9yb+KXwQ=;
        b=0a6WjfP+vQo1YNxBlvQdeZLYveQ9IkJZnzU/iYAvFirw9Hqu1yp+FUnXgimKDLzhdj
         45MkR6mJNbrYKqnwMFgLvWflQjrTS15OeIYZUL6tY9EyCq9lq3WhvocQhASBvLDmcuoD
         JGMlCDhLgs4NYsvWYOGFsU5aQzFrjppeIKBwCdFmIqKIketXZ5+de4M8n4lg8LaSylNw
         yhg/dfDOfc0siGf3F3Zox2/kKREdevMg4SDXqMxW3F8ZhD5zi8ziDg/Ze6SJ7AlVn+C0
         nD7vGz7b+ek6yafa4Wolg09p1EmP1IyuBh+zll9o70EHgPpChwOCI8C60NVZC+1+rBAu
         ywHg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=vluTwHRE;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=vluTwHRE;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712728021; x=1713332821; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=P90kdGSoTh3jHhcwDprzYicwmC8L0tM1fKuDpZl0VGI=;
        b=W/ljN9fghJ68lrrOiDuFyOSlgvK+hZ3A6yoxfxT+2tjKmURSqmMGgw6fTw2Ig09ER8
         eqz6iTvVpg8L7pktzn1QsqRBYxToZye8oCzpq6EW/VY58NiScoR9MOAmLZybU+OlanXa
         meqVUIE9M90lTrFiycXf0Tt+a7q7l3RWqT230=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712728021; x=1713332821;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P90kdGSoTh3jHhcwDprzYicwmC8L0tM1fKuDpZl0VGI=;
        b=Y+90n5yPZBgLObNT0bYmrOQClqgkI1EKzxahCofkKqHnrQGYzQbKJq6LXoG7OVaYln
         U3MMrAVkuagvBDi9dU7L/dm4W2Yqx9U2dmVjjUzS/aX44u50u0VClB7ZW1BjkWIjitc5
         ET67GvbTVsy/llmEKpIH5agwkdcI7xfc7Pge10/iKrxReX1kmfihOIaDF2AJkckm0fJW
         C5uk0pkxWhtuJ4XCZSEuqUH5H2jV20PfYfA73MCjGFRdrNqkzlXhwdCjkz0JAXx+gzJ2
         FVG6rxVkeRV2GzsdWUZFaBo13inI9wvBbKDCGfOSgzCfYsEbReeXPoWs+dL3h7ptxGvO
         XbaQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWGK1zQC/i0vY74cEm53IYA8nGSg3P+Mpc+gv1xiRPz6U7UDz0oER9hswnX6qB4SqO9qzlU5FMMYq6QyHHEpvuKtjzGFdHf8/BE
X-Gm-Message-State: AOJu0Yw/cciBKEXtvLiKxiAjwn2djKnR2BGNd/2AyoODbu7NoxtBmUVp
	pyaWSiPS57tmSW1CCcYlZ8ls2U4JOo2HKWCD8/7J89sDuhtaTvmfYWgKrTs1DqU=
X-Google-Smtp-Source: AGHT+IFrEcsc5dCZzbxXHLWgexTuau3aK8pmU6uoU5K3LmTT9Py+vFNRcEb7fxbUOmADsyahaWuhVA==
X-Received: by 2002:a50:f61a:0:b0:56e:2c1d:1174 with SMTP id c26-20020a50f61a000000b0056e2c1d1174mr985911edn.4.1712728021049;
        Tue, 09 Apr 2024 22:47:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3547:b0:56e:624f:ae10 with SMTP id
 f7-20020a056402354700b0056e624fae10ls35844edd.2.-pod-prod-01-eu; Tue, 09 Apr
 2024 22:46:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWbkej2aGfZlnJAjRIsnOBt3s7JYs3mGR5e71CEVOPFMNU0rBLM0JbL9uZijtJ1UWJ49M83m699+rnSpSHwuO83fDpYV/mGEQk3x4w0bcQbYW7tWL8=
X-Received: by 2002:a17:906:3755:b0:a51:ee85:8dd6 with SMTP id e21-20020a170906375500b00a51ee858dd6mr842322ejc.71.1712728019151;
        Tue, 09 Apr 2024 22:46:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712728019; cv=none;
        d=google.com; s=arc-20160816;
        b=K+N0pyA/NVfNWje+9+5pRVUGenqUzesyZWdLnqvAj+ufkGjJuf9/Ni0/B2MdH/Dhwn
         IsH7yNfuIkk3trsgZhBU4wqQk8XYASuXe+EGc9rrG2ht8BkFX68EsYWudHEJFL1X5RJa
         ZqlsASX+AdTJUs9Z85vv7Qy9MjL2otR5XrzszjRsCZhEFr5Chi7SZAEFgObfHw2Css4O
         VMHM1hPK06zZDWdnFRKUoQzb0M/9BCASbBWmq3sPfI61/AgWfdx+zr+CDwV4XvOb0clO
         ZRZdPQmLROVGJOW2cjcFlzox+utlLQloIiJ4HOJW2MqppMxoGE2UeFxjVWyuSTCU1YN1
         FtCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=iRdYzu8WwJ7OMWbdtUC8z4ABrFZz9Blh7sjaG+J9I54=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=Ug7JXrLBKjD0wcGRKnXMSHMd6aVqUr9cSYBi/CeyWg7r3MUU4fuv0/csqf+FuaAR9z
         bZZ3BzFPyVALpbwPagjDaVl+ejp+S47Jad9FsVsO2WtshdNrdGd1XcAQIlCC6tfqaibn
         9KugHhlJ096fdPasJlSlMcZSZbGK/u65k4nIZww5YjYsBNd0HxI3Or+dVRHl/RIEd1oO
         9E+Xh+dJEREvXRqtRHgBTPg+oql5PiUh6WNYW7+P/i72H4C8FK3hFSTrymlit0uhRzRz
         bvw/tMoK4988MTVmr7qqU7kMOrTW99V6Uj8FRVM7hpeBu0J9O1ceDVDoNFajLLW9IcOh
         Calg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=vluTwHRE;
       dkim=neutral (no key) header.i=@suse.de;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=vluTwHRE;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [2a07:de40:b251:101:10:150:64:1])
        by mx.google.com with ESMTPS id ds14-20020a170907724e00b00a46e00610dfsi5727129ejc.322.2024.04.09.22.46.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 22:46:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:1;
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 6547734949;
	Wed, 10 Apr 2024 05:46:58 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id A0D2813942;
	Wed, 10 Apr 2024 05:46:56 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id NLiZJdAnFmZ5EQAAD6G6ig
	(envelope-from <hare@suse.de>); Wed, 10 Apr 2024 05:46:56 +0000
Message-ID: <b22949af-c543-4c82-b6eb-3b89d4c34f00@suse.de>
Date: Wed, 10 Apr 2024 07:46:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 11/23] megaraid_sas: switch to using ->device_configure
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
 linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-12-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240409143748.980206-12-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Spam-Level: 
X-Spamd-Result: default: False [-4.50 / 50.00];
	BAYES_HAM(-3.00)[99.99%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	MX_GOOD(-0.01)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	DWL_DNSWL_BLOCKED(0.00)[suse.de:dkim];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	R_RATELIMIT(0.00)[to_ip_from(RLghztw5pzjjmtx4kirkcu9cad)];
	SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim,suse.de:email,lst.de:email,imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 6547734949
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Flag: NO
X-Spam-Score: -4.50
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=vluTwHRE;       dkim=neutral
 (no key) header.i=@suse.de;       dkim=pass header.i=@suse.de
 header.s=susede2_rsa header.b=vluTwHRE;       dkim=neutral (no key)
 header.i=@suse.de;       spf=pass (google.com: domain of hare@suse.de
 designates 2a07:de40:b251:101:10:150:64:1 as permitted sender)
 smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
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

On 4/9/24 16:37, Christoph Hellwig wrote:
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/scsi/megaraid/megaraid_sas.h        |  2 +-
>   drivers/scsi/megaraid/megaraid_sas_base.c   | 29 ++++++++++++---------
>   drivers/scsi/megaraid/megaraid_sas_fusion.c |  3 ++-
>   3 files changed, 20 insertions(+), 14 deletions(-)
> 
Reviewed-by: Hannes Reinecke <hare@suse.de>

Cheers,

Hannes

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b22949af-c543-4c82-b6eb-3b89d4c34f00%40suse.de.
