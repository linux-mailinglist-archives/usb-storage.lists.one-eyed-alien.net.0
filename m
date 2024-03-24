Return-Path: <usb-storage+bncBD6LRVPZ6YGRBU757WXQMGQEHHTOOZQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 5543D887B4C
	for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 02:16:05 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-69173411419sf52958906d6.2
        for <lists+usb-storage@lfdr.de>; Sat, 23 Mar 2024 18:16:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711242964; cv=pass;
        d=google.com; s=arc-20160816;
        b=L8D1U5y+CrvoXfFPmmHWuQkkY1iwXl8++ABh6/K+B4eVReCIJ/mKyb8SS4IlxuK83c
         9ISXKi61LId+pRoIejnQzYaU7pjX0gDntnvw91UaxfJO6cef7x+cRuTXbHu34VCe7t0y
         hbd07dab5n7ouUrFwYbIFzTqkbr+CrVhgRYvNdnYrtDzu4n0eqhZuR/FiCgzMLa9C30R
         sibcY7DNhyb00Vg2lblDqNTrhuVcnllY+vf4SegYg7C12LbWFpuNve/w6hTmd5nQR2NO
         vzqq3ENdvYGZOJobKSfJ3Vq7OiQgBto3LaNZIiGMKsn7ks7f0JUaOtkolRYjmLzfypH9
         TXtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MeItKnG0hwGZ/VGyZJnx3FcFqMsZ3vfulpE6bLx/nEY=;
        fh=omhSAeOlOv1aDjkOjj69HP9aMebky19G9blD18BfZ1U=;
        b=EQAEffPfKyeSUsgz98LOoQYhEuyM0jx/quk1thwVit2tthhAeR0fuLhVFnUt689nYj
         lD4QQv1Z/70WfdqsCNmmHwXO+7VYXxLu4EFovzCQcrwLqONKLPQaAAoA0YGf0R2uKPRS
         Ze5DBP7kRtBBpf2ReGrAMyH4tjS14iBkgeWKoOxFwD2RP+VSci4NbKh+XHaVhUG6M1aV
         egrY2+HPoTVWjKU8DHER3QkQKq3VV0rvHUMDIYhZd47tqgL8pvUwOkLUFJiR+q9PKJ/c
         xN+3ympWCHNOhZiWW8o01YHWe4uUXT924IwSlQzVnvZbU6N/bPXH4Fg6ProL33V1jUHc
         D1sg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711242964; x=1711847764; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MeItKnG0hwGZ/VGyZJnx3FcFqMsZ3vfulpE6bLx/nEY=;
        b=drFsY7hfTKd0PoBtc4+5MLxR0Kr5+Nw7B3/6aQ957jOJsFsej/k/wOUP5Gr1JUSQG0
         fbZzV/vmRW06+giqviEtH+qe9o6JI4o4LprDJd1cjwU2PCgJmyXX9oTan7qu55jfjdU3
         EBMuJ9ATDezYKHkLq133fsWE3y5pJmhd5s0aw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711242964; x=1711847764;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MeItKnG0hwGZ/VGyZJnx3FcFqMsZ3vfulpE6bLx/nEY=;
        b=Pi0k1HrIXGms7cZYSm4emB8aVUr3lAwof8FR/MX2ET2efDBHrLwHvxPsvM7PJmRxvp
         ouDCCQCv02PwervszGjeXYxPpGA3mhrFhezsmMJr9F/D0DJhzgEdeUVZDoa0F8HwaXyd
         DeoCRjN/oi0hlugszELJUJu5aRqpDBo5PYGgA3Bx5iLWbW8t+mbw2xfgmsB3VrRDNPTa
         3yBZr2LCZo5F2O4HgKS0+HtyytvyK9xnPRed/nHZodQmeP9hLjstk9vQANW6LSzroUNv
         22kMB8wGV+VxVfRkE/m3M5hF5J/fxEtBWefeDdpsZH0Ak1i+PknoHQdh0WLqJLo9iiF5
         rARA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVdaOvqNBy3cVfNRUeHtMJrcylUjo5V2EVLmSMWjxRNNn5nioPGd1FIDGATYmgZywD+KAGeDQ9LLXrgLMNviBD3Xy7r0fhL4oYv
X-Gm-Message-State: AOJu0Yw9lU1DN1XLyZznDO3seTLBWXj1yfDgeAQDC4dFAR+Bqs9195cr
	vR9CknLQ6ECGE6KykDaL45bnnnKL/HjpO/wB0OPK2uuZdINk57g8XmH+B9rUTso=
X-Google-Smtp-Source: AGHT+IFZ+kN0MileH7LnK/0E4JZrEzfvMahWSb/HPPXjXE2YAsQlPdaJ/hetW7m1OCRGEaWKbnTKTQ==
X-Received: by 2002:a05:6214:f0d:b0:692:fa66:9d5d with SMTP id gw13-20020a0562140f0d00b00692fa669d5dmr3882134qvb.18.1711242963959;
        Sat, 23 Mar 2024 18:16:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:5297:b0:696:7563:b4dd with SMTP id
 kj23-20020a056214529700b006967563b4ddls1896269qvb.1.-pod-prod-05-us; Sat, 23
 Mar 2024 18:16:03 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUJ6REzuEzRC6HEYB/DDAEX1+U1OYdW2FGYawD5TSpLAO1Rn/AhRLnF98MpEPtu6I2ldKMuEhO3ONhJuOd0nDjxlbjFenSBbEvN+/ITr6Dt68ZmFr8=
X-Received: by 2002:a05:620a:5758:b0:78a:4d83:c4c8 with SMTP id wj24-20020a05620a575800b0078a4d83c4c8mr1944540qkn.56.1711242963052;
        Sat, 23 Mar 2024 18:16:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711242963; cv=none;
        d=google.com; s=arc-20160816;
        b=rjqnbWMcaAQg40IPCIItxd9TajHlY7FlJLQqffCk9FBemzD6+lVjusVHICM+/7lbuL
         8aqQWGoKqiu75SfB2rFWZEzWbleNsBiOJjdsDTRB7c5XZzqO49wQOJasXkrWInLUFKA3
         kcTOT4PVEov06Gg4Q7/q5Z6oMv5Ab8vZKTFk7VVTsFMy0qSt1IJVzCZ86+l969XO8EPH
         +Tx+i88s9O5L1rakSYKqsL217+VepA+Wn8tSHzoLVG5/L+P7d8M4yqGAd8C0s9OxSfLb
         7uNu7RMGLw4/pItOGGzFZwbZZxYdqAoMuV/99mFHjlpgJfiIntFE20NC76EaKPzJ/yN0
         AVGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=qvTm7fhIrwHm5vtG7yEpELMl/T+1oCh8iEEf8066YFM=;
        fh=yrXqn/28cMi7TDB2MITSPfHltkZMn0mX66Kdh9pEGnQ=;
        b=QV4okXODCus2ZZyj1VSs8rOCMpMaAC5Y2ffQLDbz2OSaZrS7dgHbAYum8mmORdQS3s
         r9fgzpAmlihvOhzDjw3DD/aUvYSxBtPnQLJCzDj7x3aEzPWYstir3XwmA26P6e8DEcq6
         jkbmkRzf0Qy8B4awjeU1CXGkqziRoiIpw2lgvgx4Cebvl1bq96rspdybjEGnD7oxw4ss
         jJLU+3/Ipu1HGXXiCRxyo/k9lxqLlK3uEB9+g9L/OeO/TcJxGgL9MEu0j77r49vKugI9
         uotJCHZxFPmp5sqCCoNrsDze7QQzUgYZ30afPsmGaM7oNbswnxdYkYD+h7RlwaabbPAS
         cZgA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id x25-20020ae9e919000000b0078a32fede53si2599966qkf.318.2024.03.23.18.16.02
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 23 Mar 2024 18:16:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 803520 invoked by uid 1000); 23 Mar 2024 21:16:02 -0400
Date: Sat, 23 Mar 2024 21:16:02 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  lvc-project@linuxtesting.org
Subject: [usb-storage] Re: [PATCH v2] usb: storage: isd200: fix sloppy typing
 in isd200_scsi_to_ata()
Message-ID: <9c0fd456-078a-4bc1-9a07-1a6605a5b85e@rowland.harvard.edu>
References: <8d6beef7-5995-c831-a7b6-ff98d3887231@omp.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8d6beef7-5995-c831-a7b6-ff98d3887231@omp.ru>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Sat, Mar 23, 2024 at 10:55:51PM +0300, Sergey Shtylyov wrote:
> When isd200_scsi_to_ata() emulates the SCSI READ/WRITE (10) commands,
> the LBA is a 32-bit CDB field and the transfer length is a 16-bit CDB
> field, so using *unsigned long* (which is 32-bit type on the 32-bit
> arches and 64-bit type on the 64-bit arches) to declare the lba and
> blockCount variables doesn't make much sense.  Also, when it emulates
> the READ CAPACITY command, the returned LBA is a 32-bit parameter data
> field and the ATA device CHS mode capacity fits into 32 bits as well,
> so using *unsigned long* to declare the capacity variable doesn't make
> much sense as well. Let's use the u16/u32 types for those variables...
> 
> Found by Linux Verification Center (linuxtesting.org) with the SVACE
> static analysis tool.
> 
> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>

Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

> ---
> This patch is against the 'usb-next' branch of Greg KH's usb.git repo...
> 
> Changes in version 2:
> - fixed up the lba and blockCount variable declarations;
> - removed the typecasts from the blockCount variable calculation;
> - undid the reordering of the capacity variable declaration;
> - completely rewrote the patch description.
> 
>  drivers/usb/storage/isd200.c |   10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> Index: usb/drivers/usb/storage/isd200.c
> ===================================================================
> --- usb.orig/drivers/usb/storage/isd200.c
> +++ usb/drivers/usb/storage/isd200.c
> @@ -1232,8 +1232,8 @@ static int isd200_scsi_to_ata(struct scs
>  	int sendToTransport = 1;
>  	unsigned char sectnum, head;
>  	unsigned short cylinder;
> -	unsigned long lba;
> -	unsigned long blockCount;
> +	u32 lba;
> +	u16 blockCount;
>  	unsigned char senseData[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
>  
>  	memset(ataCdb, 0, sizeof(union ata_cdb));
> @@ -1291,7 +1291,7 @@ static int isd200_scsi_to_ata(struct scs
>  
>  	case READ_CAPACITY:
>  	{
> -		unsigned long capacity;
> +		u32 capacity;
>  		struct read_capacity_data readCapacityData;
>  
>  		usb_stor_dbg(us, "   ATA OUT - SCSIOP_READ_CAPACITY\n");
> @@ -1316,7 +1316,7 @@ static int isd200_scsi_to_ata(struct scs
>  		usb_stor_dbg(us, "   ATA OUT - SCSIOP_READ\n");
>  
>  		lba = be32_to_cpu(*(__be32 *)&srb->cmnd[2]);
> -		blockCount = (unsigned long)srb->cmnd[7]<<8 | (unsigned long)srb->cmnd[8];
> +		blockCount = srb->cmnd[7] << 8 | srb->cmnd[8];
>  
>  		if (ata_id_has_lba(id)) {
>  			sectnum = (unsigned char)(lba);
> @@ -1348,7 +1348,7 @@ static int isd200_scsi_to_ata(struct scs
>  		usb_stor_dbg(us, "   ATA OUT - SCSIOP_WRITE\n");
>  
>  		lba = be32_to_cpu(*(__be32 *)&srb->cmnd[2]);
> -		blockCount = (unsigned long)srb->cmnd[7]<<8 | (unsigned long)srb->cmnd[8];
> +		blockCount = srb->cmnd[7] << 8 | srb->cmnd[8];
>  
>  		if (ata_id_has_lba(id)) {
>  			sectnum = (unsigned char)(lba);

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/9c0fd456-078a-4bc1-9a07-1a6605a5b85e%40rowland.harvard.edu.
