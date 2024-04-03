Return-Path: <usb-storage+bncBCHZVHVFVMARBKXWWOYAMGQEDX6CKKQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE3B8964BF
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 08:46:03 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-558aafe9bf2sf5079491a12.1
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 23:46:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712126763; cv=pass;
        d=google.com; s=arc-20160816;
        b=VAFb9XuyPAflRjSUf8/7+GdG3qVhjsi7VtuEMdQtNbUL+g/UHQq5DmXIK2tjGJiGRs
         LGyZFfgqkdIUxVRrDlRnhjSPP4HYkpojPX2tEFbZ3CFGJbDOOV6AQjrHpdhVbuDCvobh
         CPXzuDHc4Ba3FILvMnGImJmxW5rvADxkQD7AwD7j/6vb0AToOtqYvJ3UG4dIahFV8VIC
         KU3BvTY+KhPcGCZL9W11hTV39DTWEtECGIWgClUR67hzkjD+82j2bIxQG2o0HY+X4R2w
         t1YhS08gurAX4fCDfxIrHhUtV0He5P2hVvOOmETRW3db4SKph6d3hhe+Niui0YoGXzkk
         gTXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=VPSrDl7drTv2gMp0ZFHAV/2n+0TWJZ77jehqVqwXMRQ=;
        fh=z1VmjZ/9NRkisaPy5+/pGc/xg/4byRbixtk97kp1PL0=;
        b=Dv4eq+Fqi9TbqdzxDzKnqmu5aOL17MCFCHpLh+IRIpM/wG7Wb4txZ8o8ilON6R7h0t
         728DaXFTULSx+BG5P/t0ooBmTuN64/N1CPamFY2MK1gkfONvazGfmtJIulqB94Lwhqcj
         0mnjyK/cosIH1ZA1hrm9yPZ6TGJLPDXATXJ0L30laI5GGn4VI5ljQMMYMXECmf9VyGsn
         0TTRkGIpxOI0PSNAl4AKYYi1EyRW3mzZv0e+KgoGE/MGLkRzbrEY0rjlravV1GQ0ktix
         P47+D68d7/WnigUJyoqA/GR7howyGKn9ir56O+6y9S2OHI/Yb35NK4G0vcHKb10kF6dD
         htWg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="Zp/rLtAG";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712126763; x=1712731563; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=VPSrDl7drTv2gMp0ZFHAV/2n+0TWJZ77jehqVqwXMRQ=;
        b=jV8+hdoN0c0HeurxXL5AuQj1WEWoArlBCwiszByDX5DpZ/rf1cey0JgToHRBKzmYaF
         YCKq0NHqy6N41vSqQ8edTrzG6g5cE0JcqlxJrjkD2owP5d722TR1r9iydJXQTtwihLj0
         QBD/iUKxdCUKoYrB2lZ//Od5x2F8n05MeqBks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712126763; x=1712731563;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VPSrDl7drTv2gMp0ZFHAV/2n+0TWJZ77jehqVqwXMRQ=;
        b=p+ls+9CAH0/PGYX8+K54q6UqWI9XF+8Zi7EaWJQAq5hSF5TWg++1GiQQLYqFOGdGH8
         ljPPq8SonGBoLg3JMfloT8/Fz1RDMtseqrf8bbb591FAlf03giyhOvPgjYLboVe79ULd
         qvvcHGjHDw78+VVEywb4gXyCA7q2mM6++7fQvHUM+2Dki8zk/I8nk/Hb9GbU/5+1ptlx
         z/ernAtpV4FcB4v9AvhzSqiffQJlWmCRhUxDjPGaK4IPJsUR+tb02eNMbxrfdP/wcsNv
         a8f2sUdDL6q0iN+w/XXArCy8K9zNjT/Od0VA9AvzS7VdAw/w1qZgQbNQ3b+0u5QUM0nK
         u4Hg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWrPxLGyI6K15XAX8NVq3VE1ta08IKt42QYH8K3OaT/fbpITZm2+z1Cy6l0K8BJ4u2Ec9qo3CoeJXEVC+rnF5lmabpFJ9n0jXxR
X-Gm-Message-State: AOJu0YwqFc6pkA25oHlK1jw9C3BKO0l/Hv33iTCOwMFvohWxWn3tL7Gz
	lohPIZy4tyxc/5PcVDg9dsLlFUtiX0P9TE4z29Nul8pxLEJ7a9SsGvEKzSAnNZw=
X-Google-Smtp-Source: AGHT+IGxzsnOyWEFIVrnYwRfo3Hk1Zz+KPF6IfbnAJfx9E3EA7LoEJHPKHMUdmVO6HznqerXoCkkvg==
X-Received: by 2002:a50:9ea5:0:b0:56c:16c6:2091 with SMTP id a34-20020a509ea5000000b0056c16c62091mr989592edf.1.1712126763021;
        Tue, 02 Apr 2024 23:46:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:1ec9:b0:56d:c85a:cbaf with SMTP id
 g9-20020a0564021ec900b0056dc85acbafls1214108edg.0.-pod-prod-03-eu; Tue, 02
 Apr 2024 23:46:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVFd64hh3gtxWUx5rxXtwNeFqQZ69yCJkHiOpZ9ARaC57Rt0sFmwloTJvsFQHUM6Ut+E7ppUjYW/pGdH4DSBQJtBbjb+cFdHI5Pv1Cbo+40JZpdRRY=
X-Received: by 2002:a17:906:a81:b0:a4e:6580:eec5 with SMTP id y1-20020a1709060a8100b00a4e6580eec5mr1144181ejf.27.1712126761158;
        Tue, 02 Apr 2024 23:46:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712126761; cv=none;
        d=google.com; s=arc-20160816;
        b=iaK9dSqhfWLvfvUiMA8lwII0Qeylzr8cMbqqRfvBX0S+MkeQUNC62ML5hsa6WP9KUN
         MoBb+DInJUtOpwOTvvfFILaOfQLh1yjAMaqtYqLIpofXQsbp9I3sgasi0v4kHYGPAP+r
         2VSZWlxl55FkBX7L2tOsLPDaybDcjzKwPsZ8sqGoR+mew+lDZbUPqkr6yYWut+f8fWyV
         ZCFSFuZdazH/lR86GoQF1i0pF/jj7qCOgxHZeMa0EupkHXwIvatk+kekGF1Xxuez5aFO
         z7b8YR81ttNM9e+qVeLx3wAKcoyFq5b+dSGagH8ulzs/idmHALhRMGqEEYUX94fTxyPG
         PQZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=Krl0GcKHEtF7QF/ybiiSTF6f3Aq0CFi4MgUwpbrFulo=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=pQkfZjnAWGEs3fGDxCfbg9+sKxLZDRG9jEdTh3Te+vzNCoxc7JE3usZi16JMpAjyjl
         qnL6mcit9UHVpxaGGX3vmjornsICjktj285GjnnRr4i8wCBBAWtRNj7GBosrQ/xIYSiX
         7OFFlGRN/FDr/gSbbEtzjVYQJTp+eZhtzS0aTBbZJ71YkSK3km+a5XWRjvYrmbM1sCm4
         vkx1WdZU9ElFnLXhhiGTHnjt2YR7V71+7S29mAfKZ91TW8ioOfQmfMQ6BdA2W8wAW62K
         M6H04CzgPabE049P5bx2Q4BmQJ7F52hzYXljazFUYX0FzaovDvoztSx/oYqs6KYYaxqJ
         Nmhw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="Zp/rLtAG";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.223.131])
        by mx.google.com with ESMTPS id i10-20020a1709064fca00b00a4e6f0d7820si2866597ejw.876.2024.04.02.23.46.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 23:46:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.131 as permitted sender) client-ip=195.135.223.131;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id B438D5C8EB;
	Wed,  3 Apr 2024 06:46:00 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id BCF4513357;
	Wed,  3 Apr 2024 06:45:58 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id MEmyKSb7DGb8CAAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 06:45:58 +0000
Message-ID: <a3461241-75f3-4bc4-a1b8-bcbd6a53e559@suse.de>
Date: Wed, 3 Apr 2024 08:45:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 02/23] bsg: pass queue_limits to bsg_setup_queue
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
References: <20240402130645.653507-1-hch@lst.de>
 <20240402130645.653507-3-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-3-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: 1.14
X-Spam-Flag: NO
X-Spamd-Bar: +
X-Spamd-Result: default: False [1.14 / 50.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	 MIME_GOOD(-0.10)[text/plain];
	 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:98:from];
	 BAYES_HAM(-1.38)[90.78%];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 MX_GOOD(-0.01)[];
	 NEURAL_HAM_SHORT(-0.20)[-1.000];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email];
	 NEURAL_SPAM_LONG(0.62)[0.178];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 R_DKIM_NA(2.20)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_ALL(0.00)[];
	 MID_RHS_MATCH_FROM(0.00)[];
	 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:98:from]
X-Spam-Level: *
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Rspamd-Queue-Id: B438D5C8EB
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b="Zp/rLtAG";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.131
 as permitted sender) smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=suse.de
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

On 4/2/24 15:06, Christoph Hellwig wrote:
> This allows bsg_setup_queue to pass them to blk_mq_alloc_queue and thus
> set up the limits at queue allocation time.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Bart Van Assche <bvanassche@acm.org>
> Reviewed-by: John Garry <john.g.garry@oracle.com>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   block/bsg-lib.c                     | 6 ++++--
>   drivers/scsi/mpi3mr/mpi3mr_app.c    | 2 +-
>   drivers/scsi/scsi_transport_fc.c    | 6 +++---
>   drivers/scsi/scsi_transport_iscsi.c | 3 ++-
>   drivers/scsi/scsi_transport_sas.c   | 4 ++--
>   drivers/ufs/core/ufs_bsg.c          | 3 ++-
>   include/linux/bsg-lib.h             | 3 ++-
>   7 files changed, 16 insertions(+), 11 deletions(-)
>=20
Reviewed-by: Hannes Reinecke <hare@suse.de>

Cheers,

Hannes
--=20
Dr. Hannes Reinecke                  Kernel Storage Architect
hare@suse.de                                +49 911 74053 688
SUSE Software Solutions GmbH, Frankenstr. 146, 90461 N=C3=BCrnberg
HRB 36809 (AG N=C3=BCrnberg), GF: I. Totev, A. McDonald, W. Knoblich

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/a3461241-75f3-4bc4-a1b8-bcbd6a53e559=
%40suse.de.
