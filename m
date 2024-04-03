Return-Path: <usb-storage+bncBCHZVHVFVMARBAMDWSYAMGQENDRSEIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AC38965B3
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 09:13:06 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-56e090236acsf178127a12.1
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 00:13:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712128386; cv=pass;
        d=google.com; s=arc-20160816;
        b=eKpYGh8/7gILjD7enZvM0AUBeaBqi8Zj5VsPWFeuFcC6vycQppSdgYhaShWqm+Ul8q
         d4mAAMnRFpJob86uWbAdyQR8Q7qa0UYYdqKwIhvy1oMH0anmjLqYxHvQ3CWDh1eA59xW
         +JmztvgqfJvr3n2jGABHv4j3as42ZJydbOm/umD6Tf3ufUragzMo7HsB+cY0sCs9lnkp
         /aloXd1ulaIyaVt3DWvD+csblKQC769E+8NNet2ZBODalThaZSsuQkL5rz0edFexckc+
         1DK8eRrb5hDpz7pmQmh7kdKM1qG6lQsB556qV5KFZLOr+T42a9V7vmt54xEBeBwasX9v
         GpIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=Nz/klOCGRnkUd4kReFv9+28QUCo5tv/58zfe5uFLqjQ=;
        fh=SCBWE+xnnJ9jfQmFK1iYIq99aWyAjBWqLs3u1SnR4ho=;
        b=vhKOH6cVXJIVXzI/cJf8zZaywGLgN50UKFsvNzTTY3kfTQcX2ylgCePH8RafO43OFM
         q1WfTqRLj+zbcJPBsLtvCpR9WXVN5+8s4M4gJfwFK6Y9U5dqkOaGd4hF4OprIAGy/kP7
         Xr11DQGWZrH+oELstSMvvIWnIrehL3s1z/2B57GAuOax7209bv1/7hXMw3ginzY7zmmP
         WN+ftv1wlcnmODMwk4+tP6LC4mzy5aiCbOOf+E9zTatxklaLfH6ozrTf/+2AbRCk/cqz
         65gPrkL0HlojETT+TVwSufLYh+EGCh8EttDl3J7/xK6dlUODc/F+OSUB9Oj8E7Dthjx+
         f5pw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=PDm5AABy;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b="7/yl97pq";
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712128386; x=1712733186; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Nz/klOCGRnkUd4kReFv9+28QUCo5tv/58zfe5uFLqjQ=;
        b=DSGtf2FljQu4ko4qf29KU8H/t5qWW7rBo8/wxPIjm0XggXSMy1nbp5fqtwY/4Hptnw
         jmHmKXYjibfRQerhkN6r04XY1M7X/Vgj42FmmJ7vaxoIHQL/6oXcYmfviyDMdZ7+7Wmj
         Z5E+tUMz6hixkogv2XnIACGScywtAYuQX3qwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712128386; x=1712733186;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nz/klOCGRnkUd4kReFv9+28QUCo5tv/58zfe5uFLqjQ=;
        b=SRociw1OjG57Q9O9lTriNlce1GYUsCJwdy+rG9TAlBothbd9UK05Qmh6KIsJ9cexAc
         3Nm6fdc1+xY6LZ4XPV62JsuRE+IESs7oWCcSsrCVYqOZ4Twpfc5QcvI17SER+Twyb3EV
         qJhAM0bxrNuY2lLJvfUCajE8GlvzQgThbWn4oLRVVbty6XEe25U8o5qYaa3h57XoH66M
         QgF7PJAWeHbC+JyBazJz35H/IFc6MwUOp/bgbqmBQIxRkza58gw0Feb0c1PZHVzCFN9K
         QHmGpi2bwf4wYYOOVBlsuPiaiQSWl3Z/uuCmSAxhLjLmlBgVbatJXfwv92jGcFw/GD/w
         lUag==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXLyDRyHcHjHpo6tMk62lTKMRFdc+deZSGQ9pSoMPyB5HeuLISVMTD0pSMAY0QlPvBjR2m5Tp+9BaNbwkLA2PrzWtkhhQ+gSDEU
X-Gm-Message-State: AOJu0YxR1hdWVR+NODC9/aA5NXYz38gva1qmdhfnzJw1Hwl9C8t8Gd+n
	+kZXU6o1vAD1VtbthoEgNygSgHpIRuybMaDI+WvXUYbz5wZdocHiRhFVFgO5Xmk=
X-Google-Smtp-Source: AGHT+IEKWZaGwAdjmlf8U4lCWKus1ruziLz5RSeUk8/h07S5H0zNUvP/k6u2+wd/bmWmDB4iO53I5w==
X-Received: by 2002:a05:6402:4301:b0:56d:fa6c:3110 with SMTP id m1-20020a056402430100b0056dfa6c3110mr1365035edc.12.1712128385921;
        Wed, 03 Apr 2024 00:13:05 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3588:b0:56e:997:fbbf with SMTP id
 y8-20020a056402358800b0056e0997fbbfls119507edc.1.-pod-prod-02-eu; Wed, 03 Apr
 2024 00:13:04 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVQDlcGcizm7MzNTaqbmc2LQ9OKXlq6IaCAthypJidY4b36cbEPnWxMRjqzGTtckL32LM2TIZf6rCSTk8C9hf2qXjiEtP8pCbbUHShQzAyjuiQyM34=
X-Received: by 2002:a17:906:1b59:b0:a47:4862:7fef with SMTP id p25-20020a1709061b5900b00a4748627fefmr1079593ejg.76.1712128384068;
        Wed, 03 Apr 2024 00:13:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712128384; cv=none;
        d=google.com; s=arc-20160816;
        b=e5FtB/GF65IWZb7ss+8B4Y7IPHM5CJrEhBF0dCKYAz/L2GdJqktWzAREgZKhdZVygq
         HNog+ukcaBxQIAgfL90y282ormDilHUI6R5R4jLfm4AphM5OyxDgGJGyaKu7W+APoyvP
         i48jpby2dxNGrkCqT61kzcPHs8ihobYfyb6duOA1T1y6ZfKqccE1NgCQqFPeqwUQgBFP
         +OpD22UuqegdSNvXUeaH2+gTuTEvecGNUDJQlxWOB8dMlK9h4hDdYO8zfm6tXN/oEzcE
         AhWXQufgErrH95tUJRRHn7AP353FiQbyApND7uFPt/p1I+uxDEBKY8br1q04+oEvVV39
         tUzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=OiWX+t0YykMPVMaO7rxvYLSeAvZtWuwVQf8hgobj5xk=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=Xic/cv/vfL25C7hLO8bPKYLr0eFlJ7HxsZJzNpguihQNsL7P7qgbrkuW+73INpH7cP
         69Xgv4S6AnODk5IYo6tS77UscQvS/Wc1t10SvEGBFpyjh8w8YPGcuIsA3acN6sHb6/7U
         0f+jIMhoer3KDASlgamL4QOFLX8uaYZyxkSmiCkLSg9F9hRp5nbAVW4JXQy4rOA8RuFI
         Yl6Zlr4FfGCQ4ndwUm0F3VsnLjKnAVVfqvzInVTEls/Tk/qMhZDjG13CBhLpkRWxezws
         1MdqUk7zv5+egadsimllClCUeWhJn4iXsNVMyMLNm3uDA6NW14BX7+L80svIRrhvhYQi
         q/WA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=PDm5AABy;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b="7/yl97pq";
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.223.130])
        by mx.google.com with ESMTPS id t11-20020a170906064b00b00a4e5a7c996esi3683492ejb.535.2024.04.03.00.13.04
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:13:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) client-ip=195.135.223.130;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id C49C935037;
	Wed,  3 Apr 2024 07:13:03 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 0CC0013357;
	Wed,  3 Apr 2024 07:13:01 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id WGgdO30BDWYlEQAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 07:13:01 +0000
Message-ID: <ecdf8656-252b-4bea-aff3-8f86e7faba61@suse.de>
Date: Wed, 3 Apr 2024 09:13:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 17/23] usb-storage: switch to using ->device_configure
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
 <20240402130645.653507-18-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-18-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: 1.81
X-Spam-Flag: NO
X-Spamd-Bar: +
X-Spamd-Result: default: False [1.81 / 50.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 XM_UA_NO_VERSION(0.01)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 BAYES_HAM(-0.96)[86.68%];
	 MIME_GOOD(-0.10)[text/plain];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	 MX_GOOD(-0.01)[];
	 NEURAL_HAM_SHORT(-0.20)[-1.000];
	 RCPT_COUNT_TWELVE(0.00)[42];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,lst.de:email];
	 NEURAL_SPAM_LONG(0.87)[0.249];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 R_DKIM_NA(2.20)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_ALL(0.00)[];
	 MID_RHS_MATCH_FROM(0.00)[]
X-Spam-Level: *
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Rspamd-Queue-Id: C49C935037
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=PDm5AABy;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519 header.b="7/yl97pq";
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130
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
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
>=20
> Also use the proper atomic queue limit update helpers and freeze the
> queue when updating max_hw_sectors from sysfs.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/usb/storage/scsiglue.c | 36 ++++++++++++++++++++--------------
>   1 file changed, 21 insertions(+), 15 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/ecdf8656-252b-4bea-aff3-8f86e7faba61=
%40suse.de.
