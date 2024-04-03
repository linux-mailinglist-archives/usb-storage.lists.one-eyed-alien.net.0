Return-Path: <usb-storage+bncBCHZVHVFVMARBQXZWOYAMGQEYWXZLNI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 028588964EE
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 08:52:51 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-558aafe9bf2sf5086285a12.1
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 23:52:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712127170; cv=pass;
        d=google.com; s=arc-20160816;
        b=OdNBBF4WldQjGZV50Ks1aDwh1SVoSQ3qrnOqDuB1qKB12K3LvrAwOsMXtI+OkYiksX
         NI3/M1EQbyZlmkUYJe1c6KjmtB7xEsgWgeJ2MqxIRpFPJOhM2c26HSQWVfjgWFJaosDn
         cgAM7L99mIFtByqz554qDigFlOMoRNZtXcAAitk6ETzxSSng/mlCulZRlPgiCNaINtuS
         HupDfUu9e02dgOTDOZgjej9YpE0r4xfpk9uPb0YyLcREiZL6CPZW1RHOdhrrTo1MF51r
         yP7dtEVyecg8F9Bb//U64PAyIztFVYv6V2tKVm0S8jrTNU0AQP2Z8Eu0CJuX/tiIBmd8
         OYKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=dLRpmj5Ed+fMfnMEEo7K9yu7DSSqKqnl7qPDk22u55k=;
        fh=qItLFEdYJrHYtdVUKq9nhFWtQT4JxTvvZ/rUCOYpKCg=;
        b=CPOZMraF0FvJ1W7/YqaVdtlKfZhcunFOpzM4KEWtsFiIzcQB1y6Dirx0nebVpHO5DO
         nOO73DEzwPu3cTivPhSQMVU/+I/Z0RsRcgCgkkvXPopP+oNGfMy3lpJfBXfqyRHrxmum
         +1c2ipMtT9Ssubba5BOaE4oge2TY+0TPmI+gOdeP/CmHfT6aCsyMgQoyLOSdl7qUL4CP
         6cFWJMM/S1ZSNoa3J/4A+sAdRDpYxpRZGypwgbRJbxZBUac9r7/BDJ/JqfE1pr0oypBW
         pbJcdtuxvNwwi6rS4+ZlRxAVv70OH8uLD3UiM9V/mP9SXjg9BMaGAsy3qiXuc3xmqrHG
         5rqA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=gwu0kIJn;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712127170; x=1712731970; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=dLRpmj5Ed+fMfnMEEo7K9yu7DSSqKqnl7qPDk22u55k=;
        b=WH2XEqaY0YIuUJhdob7xOEH1wxBHC6yjl/Lv9AgDtwp84/MzSxpa1gCCb7T3CK0vJB
         PnT+m63YLrsoBDxkrcSjQCXOCdGK0hOdqx3H1GJA7v52qUJSTU38nhpjMPqRFNC9evE+
         4tbw69pqb/j1F3thybqyJq1vcTTSq7vk9SKmg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712127170; x=1712731970;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dLRpmj5Ed+fMfnMEEo7K9yu7DSSqKqnl7qPDk22u55k=;
        b=qMuzNvsOpm6DrAlAWz8P11TjiMIxn28DBBvEHbGrHbOHKCZmrRl6xyPebp+He0DfNm
         UXgdhcCqkRHgL333HNpDLqkaH8FIhLxyfttOeUliWdnbsz37Gkq+BkdM/22A/ndXq+5a
         8DHmBXOa2doczVWGL2551ORyjlF6Op+jcRzUe3eXX0WTeWAC1rqil3nUbDNlDzLytq0z
         cwNoWhZywtv0Gds+0rfA9V9LP05j2imJz39W/bjQ10U1fJFXZd1NHK0a8IVfVBIwv6Yf
         /tsqsSv+MmGr/A+Xjlii2M2JgD/gAcL/6VKiGffJWGPbCY1N2Lc5xrphlegv2YXxKtbq
         qA6w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU89cQpASUtwMCIYFXh4yIYpmoy2zHdjZ+NkGcPVMSlMDwJJgIZ/ZbyPiEDfmxpikxZbx9Z0lJPCeak0gItYutcch51rE1vdStn
X-Gm-Message-State: AOJu0YwU+EDhZJHIDbWei80x1LKGuze8Wsn4A08MCk5YHCiaAIgu7DXT
	QfkHMz9ljexBTGUt6qIOyGLCUJSEaiIjFxYp0gMRppIwvE/ABm2UT6/8DBzV738=
X-Google-Smtp-Source: AGHT+IGyfreBYE1XJ5SB9jex9L8VN3Ika95dykTWitQSCinw5mW8zWWRFJJIxsfO7CkdlZ9qZcK/Pg==
X-Received: by 2002:a05:6402:358a:b0:56d:eed0:4dc6 with SMTP id y10-20020a056402358a00b0056deed04dc6mr1440282edc.23.1712127170523;
        Tue, 02 Apr 2024 23:52:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:2692:b0:56c:4cb0:f667 with SMTP id
 w18-20020a056402269200b0056c4cb0f667ls1549529edd.1.-pod-prod-03-eu; Tue, 02
 Apr 2024 23:52:49 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUNSrV19zh0EV6Iqo4Y5ASWEsmrryuASYYT9w70BD26pCSMtlEQwsQ/pD9cgdmNULQv2dYbA3cVlsKJ2gyEVYejjcjrLYMBwoiTjlMBZhhzvczNYRs=
X-Received: by 2002:a50:f692:0:b0:56d:f937:9656 with SMTP id d18-20020a50f692000000b0056df9379656mr1537812edn.9.1712127168695;
        Tue, 02 Apr 2024 23:52:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712127168; cv=none;
        d=google.com; s=arc-20160816;
        b=yAW8vWuWhjf6EHyvVQMTgy2TwsR8sfgSJqpWUVzra6/AdgMPNsUvgKZj8mKV2xj0Z7
         VIwoYISzUjI9+LfnT2n1/hnvLcoZoLg79uNFeqA5hpSI3xIhyRc3IUHaUrV6pvJgloY7
         Xwcgofcz5OSy9vQvFATFUSKFx+uXym1HCH7pPa/xP1I8RPp0FVWwHHRso+M3pZcU5x35
         rn9gnhRNKGuGxD70kZ8szm0E0nhZNcSEwZuWCTj7s9BmH4MClpfBqFTV7On368ny7/gB
         rWQDHnPVX1H69hYFVKqaGhg2V3YQBA8scRYWCsldgzVY+CYYbXLmUqLGW4K9xxsWq4+y
         8uaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=ZUr6XkKZrdcHP0wDyRtX8qCliFtNN1gSLHElAYuZIq4=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=znQwmb8gaZv5Vf1ACCA72n2O0yz1MmKvxdnp+HENDp0I3GRZMz2eX93qJOj1e50DWV
         pPdierc/vJbWtG0sn5vGK/5NUzFJXvjjtkekYFTtepw/udvl0Kj1lLhiY3yZQWB46mcW
         IHGbNjnFV1F3N3GrVPIkWgIG7XKWVXnHfxUDbJ+N4go76iC56HQcJh5xrLpu6cDL9pO9
         OoTTOszVA2zqveq3bAKjDRS2GT3OYXXVHiDFBxnSBYa+Xip//y5KK+5gqdGr/S4SYcJJ
         3CJgr/jlU7IrdbkvBvqSl1Zk3B95Ugw0sPbGiBILqFv5T67+rTo1jPHTtpYWVEcHLmFI
         +mow==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=gwu0kIJn;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [2a07:de40:b251:101:10:150:64:1])
        by mx.google.com with ESMTPS id l16-20020a056402255000b0056c303d81adsi6685737edb.435.2024.04.02.23.52.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 23:52:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1 as permitted sender) client-ip=2a07:de40:b251:101:10:150:64:1;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 2B64235018;
	Wed,  3 Apr 2024 06:52:48 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 972BD13357;
	Wed,  3 Apr 2024 06:52:46 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id ww7xIr78DGYnDAAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 06:52:46 +0000
Message-ID: <692dbb62-3921-4305-9246-14307ec4ebfd@suse.de>
Date: Wed, 3 Apr 2024 08:52:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 06/23] scsi: add a no_highmem flag to struct Scsi_Host
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
 <20240402130645.653507-7-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-7-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: 0.87
X-Spamd-Bar: /
X-Spam-Flag: NO
X-Spamd-Result: default: False [0.87 / 50.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 BAYES_HAM(-1.57)[92.20%];
	 MIME_GOOD(-0.10)[text/plain];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 MX_GOOD(-0.01)[];
	 NEURAL_HAM_SHORT(-0.20)[-1.000];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,suse.de:email];
	 NEURAL_SPAM_LONG(0.54)[0.154];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 R_DKIM_NA(2.20)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_ALL(0.00)[];
	 MID_RHS_MATCH_FROM(0.00)[]
X-Spam-Level: 
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Rspamd-Queue-Id: 2B64235018
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=gwu0kIJn;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       spf=pass
 (google.com: domain of hare@suse.de designates 2a07:de40:b251:101:10:150:64:1
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
> While we really should be killing the block layer bounce buffering ASAP,
> I even more urgently need to stop the drivers to fiddle with the limits
> from ->slave_configure.  Add a no_highmem flag to the Scsi_Host to
> centralize this setting and switch the remaining four drivers that use
> block layer bounce buffering to it.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: John Garry <john.g.garry@oracle.com>
> ---
>   drivers/scsi/aha152x.c         |  8 +-------
>   drivers/scsi/imm.c             | 12 +-----------
>   drivers/scsi/ppa.c             |  8 +-------
>   drivers/scsi/scsi_lib.c        |  3 +++
>   drivers/usb/storage/scsiglue.c | 10 ----------
>   drivers/usb/storage/usb.c      | 10 ++++++++++
>   include/scsi/scsi_host.h       |  2 ++
>   7 files changed, 18 insertions(+), 35 deletions(-)
> Reviewed-by: Hannes Reinecke <hare@suse.de>

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
one-eyed-alien.net/d/msgid/usb-storage/692dbb62-3921-4305-9246-14307ec4ebfd=
%40suse.de.
