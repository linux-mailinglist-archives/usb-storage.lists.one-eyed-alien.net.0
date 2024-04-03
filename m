Return-Path: <usb-storage+bncBCHZVHVFVMARB373WOYAMGQE3YJ4CHQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 8359F89651A
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 08:57:52 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-56de2dc6f12sf1128623a12.2
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 23:57:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712127472; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cgkdnku1JohDD51vHZsE69a2slbi0w8ty+8eqUX7e9j3i75dDcllWqOc7iOGHWYcNy
         mOQZBuXGIUHWKqVptzUuqs/KPfi3iYJvcp4fKIXJUyjFCJxfp7StGZatcmEzWESWapSY
         5ePp1ujP+rPExE6c4LBAuku4FTtsJAFklSgeaitTG3Q/XYHkn9aoSDM/z+R4lAWk5ORr
         93mymo2AH/Kx0lJzEjFYGzdJi07Pw2y7rJhY3+4XOnO26doMkp3WuGNERANK6MK4boAf
         DzAlE1xiYB/AloleIE/8s1GfL/+J87In+u6KBfZF0PfDl1+nu4tEelb9Z6Q77Lx03TGx
         R8gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=cE0F+2mThDq0U86TPGfwNZ+zZbw9mkl7uio1nv4CqCE=;
        fh=5Ea7jki34QqWUfJd71/TN3s7ciuFUJ07hG1wzLdsSPg=;
        b=FEiVzec7dkj1fWUOueWYEBdGUKxPbjRIWjvSFbrb/aGj/cwgWJnkZ3FxVY7DAIVeSj
         4uFlPt+uYLXzqdku18YW7w23n/VKXZgrsgmuA4unpJDqV+T73GxW1AkGUTyVIscSnuR1
         SFHIJuUYO9dALfMKELcZOUR6LrJEnEdpgXK3ZOc3FALSH5bQwPwdOof+5d+UB5zRLCMy
         GPdPcyGFQSByz24dikpvoLF3+QZ5OKz1vFSRDVrbxtg18a340x+Cs3o8PR6llt+Yl4TW
         tJuUXl0splc5mPuSKG1uSg3Z8CR+kwRDXGmayG5wxrwDDlBGqqO/KOvMUphUOOwzOMIR
         1p8A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=i6KqNjJ1;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712127472; x=1712732272; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=cE0F+2mThDq0U86TPGfwNZ+zZbw9mkl7uio1nv4CqCE=;
        b=Zs8vK0LMFY0VQ+t8ibrud9HBsGidToc7UdeKQmG7+IOZeNXgUGxIqd2+FPDBiOYSbg
         lDILVl9JjCtVXiInwYRgRV3jPZuD/JOLDJ8ENowyRrIMImykwih9mT3zLHPV1BErPFez
         Kx2KI4A4LXgT0a0WykjyQRpnMR2epK4KiQJI8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712127472; x=1712732272;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cE0F+2mThDq0U86TPGfwNZ+zZbw9mkl7uio1nv4CqCE=;
        b=kI3GlJmrVK/LaFjNJSYEe2yG+f6V6llSL/Emt19eO4JoDNiGGWwAwGZqUppD2XWEQN
         gHArssHZusILECsFKk7g79AilqGpEQMep92dd6Z79z2xGVo+5eXFFQRekWzrcAsVvWkb
         NOZXOviQqEY4wtKaPmkqFJizSLNb83nRLltNFet346MWEf+3Qz4rbf6UQGH9q+1LKPX/
         tyiInZ6P4KnMXuHsIXy2y0Oj5gHOROH0r9sN0WSoKxldVNmrTtzlDumUWUB1OZARv5vi
         744QZZpQOfdMGW6mE5zVneCTzaYVPXD6kiEDQzoMMf/KzR8eIX0q0QHx5A0z+gtKIV8j
         hE0Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWfelElA9SpARYuu9vaLdumPzZ515ktGJIZMsPcjj2EBVt7Xw1An0F6r01TNk63mhtGKNMLLviUd+byHmZ5Q9JrSj4Q0HZ7JVn+
X-Gm-Message-State: AOJu0YwNjG62sOjFGyhb1eO2CjqSihEmd/wTb8AktZ8xOHvhmIylydra
	urm0h3+5Drv3ZxF9L4M1NIyH8O5MR9Ted39udeulkO4pS3hO9b8XF85VGGebVTI=
X-Google-Smtp-Source: AGHT+IHf6ZispPPq4Ien6pnp1rc2t3rjSAcOm5E0etdE5VnicO9XV5ieZhEI0PlFxIf6N2SL3/yiTA==
X-Received: by 2002:a05:6402:5207:b0:56c:2f3a:13a7 with SMTP id s7-20020a056402520700b0056c2f3a13a7mr1341353edd.25.1712127472176;
        Tue, 02 Apr 2024 23:57:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:1ec9:b0:56d:c85a:cbaf with SMTP id
 g9-20020a0564021ec900b0056dc85acbafls1220423edg.0.-pod-prod-03-eu; Tue, 02
 Apr 2024 23:57:51 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVOK7dsik0b7Fw09SRsjEJO3bkXbdF33auMbqHUhkHoLMeht4w4hdsA/VfrX0TlMT1NvhhLAW4DRyrj/9MAFZuT52CjIJp3PZicsIf6W14xtDikebI=
X-Received: by 2002:a17:906:3e49:b0:a46:636d:ef23 with SMTP id t9-20020a1709063e4900b00a46636def23mr1181862eji.54.1712127470599;
        Tue, 02 Apr 2024 23:57:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712127470; cv=none;
        d=google.com; s=arc-20160816;
        b=u4qJV16KSGVjyQaXdnsI6xFhacj07CwtiVlT0J3KHVr5XgLmHWmBXBc+Q81tPslYRZ
         v/4ZotVgL4IGxgNH+xgPNF1R8KtqbB/hJFZmfte36DIzhf7gGMHDU9n6HdIBY/f2Lnu1
         kTEg0e9wezgHxNW/rY2evYJW2drM2sVfmeHuXZQrGksjeDCMHkxHMbDi1ErMJOVP7aOH
         mX5fIBlVxoz1wtQhcZmI+Uap5wsZ3UI2twBHbXvkitFk6XflTAVUD7keNRvEdnyiwc2E
         03BCLFz3zLbnIq2Pr+e3V4imFK/p6xKErlYBhgO5ZWgdIIlqCKSDz71jG6KI0SuMuTS8
         E9Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=GN2NendZI8uhGOIc2ZG6EvcgsB9oPHr1xy77WG1FFkI=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=l4j1EEKknhuwdJOrM8zjkceoETrWhEz/UfIwpGt7sfNvIxQQ5MEbZVNku+36S84d1s
         eCqIM3KgIEI2bs+oTmrO8Kfv7IEcF2wz9UBE6qlyTKB5lCvhJbpXQ+3jvy+C9xWr07np
         HFWg4FmH9OsY/JiiccQX3oTunR9ArF3Oo6ivPyId8WJTLjRHMBY8HL/f+WxRMNugJbFJ
         wSWXV0qk/x5Zl64JZN3zbQUq/qnOoYF6np6rUzD5T19aDTjAtcLndpgM4NkqKRDC4JVb
         JrTbqKxWqPHtkMI0atf8mivXQpnusE6SsNFJHwFntSmiNlu3I4Hl3JTkuSRZS8wKjoPb
         2+Yg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=i6KqNjJ1;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.223.130])
        by mx.google.com with ESMTPS id qf13-20020a1709077f0d00b00a4e5c249b14si3595405ejc.881.2024.04.02.23.57.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 23:57:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted sender) client-ip=195.135.223.130;
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 2A8AF35022;
	Wed,  3 Apr 2024 06:57:50 +0000 (UTC)
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 2050013357;
	Wed,  3 Apr 2024 06:57:46 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id CG4TA+r9DGbeDAAAn2gu4w
	(envelope-from <hare@suse.de>); Wed, 03 Apr 2024 06:57:46 +0000
Message-ID: <30cf444f-7942-4e24-8fb8-030b73ea9ce5@suse.de>
Date: Wed, 3 Apr 2024 08:57:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 09/23] scsi: use the atomic queue limits API
 in scsi_add_lun
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
 <20240402130645.653507-10-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20240402130645.653507-10-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-1.37 / 50.00];
	BAYES_HAM(-1.08)[88.02%];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap2.dmz-prg2.suse.org:rdns,imap2.dmz-prg2.suse.org:helo,lst.de:email,suse.de:email,acm.org:email]
X-Spam-Score: -1.37
X-Spam-Level: 
X-Spam-Flag: NO
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=i6KqNjJ1;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       spf=pass
 (google.com: domain of hare@suse.de designates 195.135.223.130 as permitted
 sender) smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=suse.de
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
> Switch scsi_add_lun to use the atomic queue limits API to update the
> max_hw_sectors for devices with quirks.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Bart Van Assche <bvanassche@acm.org>
> Reviewed-by: John Garry <john.g.garry@oracle.com>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>   drivers/scsi/scsi_scan.c | 28 +++++++++++++++-------------
>   1 file changed, 15 insertions(+), 13 deletions(-)
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
one-eyed-alien.net/d/msgid/usb-storage/30cf444f-7942-4e24-8fb8-030b73ea9ce5=
%40suse.de.
